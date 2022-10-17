import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void search(String title,var list) async {
    List<String> search = [];
    for (var i = 0; i < list.length; i++) {
      search.add(list[i]["name"] ?? "");
    }
    emit(state.copyWith(
        searchList: search
            .where((element) =>
                element.toLowerCase().contains(title.toLowerCase()))
            .toList()));
  }

  void emptySearch() {
    emit(state.copyWith(searchList: []));
  }
}
