import 'package:audio_session/audio_session.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/services/auido_player_manager.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/themes/app_colors.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget(
      {Key? key, required this.url, required this.index, required this.name})
      : super(key: key);
  final String url;
  final int index;
  final String name;
  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

late ConcatenatingAudioSource _playlist;

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayer _player;
  late Stream<DurationState> _durationState;
  late MediaItem mediaItem;
  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _durationState = Rx.combineLatest2<Duration, PlaybackEvent, DurationState>(
        _player.positionStream,
        _player.playbackEventStream,
        (position, playbackEvent) => DurationState(
              progress: position,
              buffered: playbackEvent.bufferedPosition,
              total: playbackEvent.duration,
            ));
    mediaItem = MediaItem(
      id: widget.url,
      album: "Suralar",
      title: widget.name,
      artUri: Uri.parse(
          "https://st4.depositphotos.com/1277251/19668/i/450/depositphotos_196680196-stock-photo-silhouette-muslim-man-praying-prayer.jpg"),
    );
    _playlist = ConcatenatingAudioSource(
      children: [
        ClippingAudioSource(
            child: AudioSource.uri(Uri.parse(widget.url)), tag: mediaItem),
      ],
    );
    _init();
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    try {
      await _player.setAudioSource(_playlist);
    } catch (e) {
      debugPrint('An error occured $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: he(65),
          child: Padding(
            padding: EdgeInsets.only(left: wi(55), top: he(16)),
            child: _progressBar(),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: _playButton(),
        )
      ],
    );
  }

  StreamBuilder<DurationState> _progressBar() {
    return StreamBuilder<DurationState>(
      stream: _durationState,
      builder: (context, snapshot) {
        final durationState = snapshot.data;
        final progress = durationState?.progress ?? Duration.zero;
        final buffered = durationState?.buffered ?? Duration.zero;
        final total = durationState?.total ?? Duration.zero;
        return ProgressBar(
          progress: progress,
          buffered: buffered,
          // timeLabelLocation: TimeLabelLocation.sides,
          progressBarColor:  AppColors.primaryColor,
          bufferedBarColor:
               AppColors.primaryColor.withOpacity(0.4),
          thumbGlowColor:  AppColors.primaryColor,
          thumbColor:  AppColors.primaryColor,
          thumbGlowRadius: 20,
          timeLabelPadding: 4,
          total: total,
          onSeek: (duration) {
            _player.seek(duration);
          },
          onDragUpdate: (details) {
            debugPrint('${details.timeStamp}, ${details.localPosition}');
          },
        );
      },
    );
  }

  StreamBuilder<PlayerState> _playButton() {
    return StreamBuilder<PlayerState>(
      stream: _player.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: he(25),
              height: he(25),
              child: const CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            ),
          );
        } else if (playing != true) {
          return IconButton(
            icon: const Icon(CupertinoIcons.play_arrow_solid),
            iconSize: 30,
            onPressed: () {
              _player.play();
            },
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
              icon: const Icon(CupertinoIcons.pause_circle),
              iconSize: 30,
              onPressed: _player.pause);
        } else {
          return IconButton(
            icon: const Icon(CupertinoIcons.refresh_thin),
            iconSize: 30,
            onPressed: () => _player.seek(Duration.zero),
          );
        }
      },
    );
  }
}
