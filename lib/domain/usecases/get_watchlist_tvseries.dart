import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/repositories/tvseries_repository.dart';

class GetWatchlistTVSeries {
  final TVSeriesRepository _repository;

  GetWatchlistTVSeries(this._repository);

  Future<Either<Failure, List<TVSeries>>> execute() {
    return _repository.getWatchlistTVSeries();
  }
}
