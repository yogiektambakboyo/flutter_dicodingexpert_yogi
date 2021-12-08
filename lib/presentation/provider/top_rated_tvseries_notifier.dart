import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tvseries.dart';
import 'package:flutter/foundation.dart';

class TopRatedTVSeriesNotifier extends ChangeNotifier {
  final GetTopRatedTVSeries getTopRatedTVSeries;

  TopRatedTVSeriesNotifier({required this.getTopRatedTVSeries});

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<TVSeries> _tvseries = [];
  List<TVSeries> get tvseries => _tvseries;

  String _message = '';
  String get message => _message;

  Future<void> fetchTopRatedTVSeries() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getTopRatedTVSeries.execute();

    result.fold(
          (failure) {
        _message = failure.message;
        _state = RequestState.error;
        notifyListeners();
      },
          (tvseriesData) {
        _tvseries = tvseriesData;
        _state = RequestState.loaded;
        notifyListeners();
      },
    );
  }
}
