import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/entities/tvseries_detail.dart';
import 'package:ditonton/domain/entities/tvseries_episode.dart';

abstract class TVSeriesRepository {
  Future<Either<Failure, List<TVSeries>>> getOnTheAir();
  Future<Either<Failure, List<TVSeries>>> getPopular();
  Future<Either<Failure, List<TVSeriesEpisode>>> getEpisode(int id, int season);
  Future<Either<Failure, List<TVSeries>>> getTopRated();
  Future<Either<Failure, TVSeriesDetail>> getTVSeriesDetail(int id);
  Future<Either<Failure, List<TVSeries>>> getTVSeriesRecommendations(int id);
  Future<Either<Failure, String>> saveWatchlistTVSeries(TVSeriesDetail tvSeriesDetail);
  Future<Either<Failure, String>> removeWatchlistTVSeries(TVSeriesDetail movie);
  Future<bool> isAddedToWatchlistTVSeries(int id);
  Future<Either<Failure, List<TVSeries>>> getWatchlistTVSeries();
  Future<Either<Failure, List<TVSeries>>> searchTVSeries(String query);

}
