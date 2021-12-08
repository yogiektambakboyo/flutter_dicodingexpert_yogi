import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/usecases/search_tvseries.dart';
import 'package:flutter/foundation.dart';

class TVSeriesSearchNotifier extends ChangeNotifier {
  final SearchTVSeries searchTVSeries;

  TVSeriesSearchNotifier({required this.searchTVSeries});

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<TVSeries> _searchResult = [];
  List<TVSeries> get searchResult => _searchResult;

  String _message = '';
  String get message => _message;

  Future<void> fetchTVSeriesSearch(String query) async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await searchTVSeries.execute(query);
    result.fold(
          (failure) {
        _message = failure.message;
        _state = RequestState.error;
        notifyListeners();
      },
          (data) {
        _searchResult = data;
        _state = RequestState.loaded;
        notifyListeners();
      },
    );
  }
}
