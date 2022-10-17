part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState({this.searchList = const []});

  final List<String> searchList;

  SearchState copyWith({
    List<String>? searchList,
  }) {
    return SearchState(
      searchList: searchList ?? this.searchList,
    );
  }

  @override
  List<Object> get props => [searchList];
}
