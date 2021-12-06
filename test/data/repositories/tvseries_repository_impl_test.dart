import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/season_model.dart';
import 'package:ditonton/data/models/tvseries_detail_model.dart';
import 'package:ditonton/data/models/tvseries_model.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/data/repositories/tvseries_repository_impl.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/tvseries_test_helper.mocks.dart';

void main() {
  late TVSeriesRepositoryImpl repository;
  late MockTVSeriesRemoteDataSource mockRemoteDataSource;
  late MockTVSeriesLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockTVSeriesRemoteDataSource();
    mockLocalDataSource = MockTVSeriesLocalDataSource();
    repository = TVSeriesRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  final tTVSeriesModel = TVSeriesModel(
      backdrop_path: "/xAKMj134XHQVNHLC6rWsccLMenG.jpg",
      first_air_date: "2021-10-12",
      genre_ids: [
        10765,
        35,
        80
      ],
      id: 90462,
      name: "Chucky",
      origin_country: [
        "US"
      ],
      original_name: "Chucky",
      overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
      popularity: 5154.752,
      poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
      vote_average: 8,
      vote_count: 2356
  );

  final tTVSeries = TVSeries(
      backdrop_path: "/xAKMj134XHQVNHLC6rWsccLMenG.jpg",
      first_air_date: "2021-10-12",
      genre_ids: [
        1,
        2,
        3
      ],
      id: 1,
      name: "Chucky",
      origin_country: [
        "US"
      ],
      original_name: "Chucky",
      overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
      popularity: 5154.752,
      poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
      vote_average: 8,
      vote_count: 2356
  );

  final tTVSeriesModelList = <TVSeriesModel>[tTVSeriesModel];
  final tTVSeriesList = <TVSeries>[tTVSeries];

  group('Now Playing TVSeriess', () {
    test(
        'should return remote data when the call to remote data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getNowPlayingTVSeries())
              .thenAnswer((_) async => tTVSeriesModelList);
          // act
          final result = await repository.getOnTheAir();
          // assert
          verify(mockRemoteDataSource.getNowPlayingTVSeries());
          /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
          final resultList = result.getOrElse(() => []);
          expect(resultList, tTVSeriesList);
        });

    test(
        'should return server failure when the call to remote data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getNowPlayingTVSeries())
              .thenThrow(ServerException());
          // act
          final result = await repository.getOnTheAir();
          // assert
          verify(mockRemoteDataSource.getNowPlayingTVSeries());
          expect(result, equals(Left(ServerFailure(''))));
        });

    test(
        'should return connection failure when the device is not connected to internet',
            () async {
          // arrange
          when(mockRemoteDataSource.getNowPlayingTVSeries())
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.getOnTheAir();
          // assert
          verify(mockRemoteDataSource.getNowPlayingTVSeries());
          expect(result,
              equals(Left(ConnectionFailure('Failed to connect to the network'))));
        });
  });

  group('Popular TVSeriess', () {
    test('should return movie list when call to data source is success',
            () async {
          // arrange
          when(mockRemoteDataSource.getPopularTVSeries())
              .thenAnswer((_) async => tTVSeriesModelList);
          // act
          final result = await repository.getPopular();
          // assert
          /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
          final resultList = result.getOrElse(() => []);
          expect(resultList, tTVSeriesList);
        });

    test(
        'should return server failure when call to data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getPopularTVSeries())
              .thenThrow(ServerException());
          // act
          final result = await repository.getPopular();
          // assert
          expect(result, Left(ServerFailure('')));
        });

    test(
        'should return connection failure when device is not connected to the internet',
            () async {
          // arrange
          when(mockRemoteDataSource.getPopularTVSeries())
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.getPopular();
          // assert
          expect(
              result, Left(ConnectionFailure('Failed to connect to the network')));
        });
  });

  group('Top Rated TVSeriess', () {
    test('should return movie list when call to data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTopRatedTVSeries())
              .thenAnswer((_) async => tTVSeriesModelList);
          // act
          final result = await repository.getTopRated();
          // assert
          /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
          final resultList = result.getOrElse(() => []);
          expect(resultList, tTVSeriesList);
        });

    test('should return ServerFailure when call to data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTopRatedTVSeries())
              .thenThrow(ServerException());
          // act
          final result = await repository.getTopRated();
          // assert
          expect(result, Left(ServerFailure('')));
        });

    test(
        'should return ConnectionFailure when device is not connected to the internet',
            () async {
          // arrange
          when(mockRemoteDataSource.getTopRatedTVSeries())
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.getTopRated();
          // assert
          expect(
              result, Left(ConnectionFailure('Failed to connect to the network')));
        });
  });

  group('Get TVSeries Detail', () {
    final tId = 1;
    final tTVSeriesResponse = TVSeriesDetailModel(
        backdrop_path: "/xAKMj134XHQVNHLC6rWsccLMenG.jpg",
        first_air_date: "2021-10-12",
        genres: [
          GenreModel(id: 1, name: "2"),
        ],
        id: 1,
        name: "Chucky",
        origin_country: [
          "US"
        ],
        original_name: "Chucky",
        overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
        popularity: 5154.752,
        poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
        vote_average: 8,
        vote_count: 2356, seasons: [
          SeasonModel(
              air_date: "2019-07-04",
              episode_count: 24,
              id: 1,
              name: "Season 1",
              overview: "3,700 years after a mysterious light turns every human on the planet into stone, genius boy Senku Ishigami emerges from his petrification into a \"Stone World\" and seeks to rebuild human civilization from the ground up.",
              poster_path: "/rSwOCqbDj7KJgvvnpV1KTzVbaP8.jpg",
              season_number: 1
          )
    ], number_of_seasons: 1
    );

    test(
        'should return TVSeries data when the call to remote data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesDetail(tId))
              .thenAnswer((_) async => tTVSeriesResponse);
          // act
          final result = await repository.getTVSeriesDetail(tId);
          // assert
          verify(mockRemoteDataSource.getTVSeriesDetail(tId));
          expect(result, equals(Right(testTVSeriesDetail)));
        });

    test(
        'should return Server Failure when the call to remote data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesDetail(tId))
              .thenThrow(ServerException());
          // act
          final result = await repository.getTVSeriesDetail(tId);
          // assert
          verify(mockRemoteDataSource.getTVSeriesDetail(tId));
          expect(result, equals(Left(ServerFailure(''))));
        });

    test(
        'should return connection failure when the device is not connected to internet',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesDetail(tId))
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.getTVSeriesDetail(tId);
          // assert
          verify(mockRemoteDataSource.getTVSeriesDetail(tId));
          expect(result,
              equals(Left(ConnectionFailure('Failed to connect to the network'))));
        });
  });

  group('Get TVSeries Recommendations', () {
    final tTVSeriesList = <TVSeriesModel>[];
    final tId = 1;

    test('should return data (movie list) when the call is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesRecommendations(tId))
              .thenAnswer((_) async => tTVSeriesList);
          // act
          final result = await repository.getTVSeriesRecommendations(tId);
          // assert
          verify(mockRemoteDataSource.getTVSeriesRecommendations(tId));
          /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
          final resultList = result.getOrElse(() => []);
          expect(resultList, equals(tTVSeriesList));
        });

    test(
        'should return server failure when call to remote data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesRecommendations(tId))
              .thenThrow(ServerException());
          // act
          final result = await repository.getTVSeriesRecommendations(tId);
          // assertbuild runner
          verify(mockRemoteDataSource.getTVSeriesRecommendations(tId));
          expect(result, equals(Left(ServerFailure(''))));
        });

    test(
        'should return connection failure when the device is not connected to the internet',
            () async {
          // arrange
          when(mockRemoteDataSource.getTVSeriesRecommendations(tId))
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.getTVSeriesRecommendations(tId);
          // assert
          verify(mockRemoteDataSource.getTVSeriesRecommendations(tId));
          expect(result,
              equals(Left(ConnectionFailure('Failed to connect to the network'))));
        });
  });

  group('Seach TVSeriess', () {
    final tQuery = 'Chucky';

    test('should return movie list when call to data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.searchTVSeries(tQuery))
              .thenAnswer((_) async => tTVSeriesModelList);
          // act
          final result = await repository.searchTVSeries(tQuery);
          // assert
          /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
          final resultList = result.getOrElse(() => []);
          expect(resultList, tTVSeriesList);
        });

    test('should return ServerFailure when call to data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.searchTVSeries(tQuery))
              .thenThrow(ServerException());
          // act
          final result = await repository.searchTVSeries(tQuery);
          // assert
          expect(result, Left(ServerFailure('')));
        });

    test(
        'should return ConnectionFailure when device is not connected to the internet',
            () async {
          // arrange
          when(mockRemoteDataSource.searchTVSeries(tQuery))
              .thenThrow(SocketException('Failed to connect to the network'));
          // act
          final result = await repository.searchTVSeries(tQuery);
          // assert
          expect(
              result, Left(ConnectionFailure('Failed to connect to the network')));
        });
  });

  group('save watchlist', () {
    test('should return success message when saving successful', () async {
      // arrange
      when(mockLocalDataSource.insertWatchlist(testTVSeriesTable))
          .thenAnswer((_) async => 'Added to Watchlist');
      // act
      final result = await repository.saveWatchlistTVSeries(testTVSeriesDetail);
      // assert
      expect(result, Right('Added to Watchlist'));
    });

    test('should return DatabaseFailure when saving unsuccessful', () async {
      // arrange
      when(mockLocalDataSource.insertWatchlist(testTVSeriesTable))
          .thenThrow(DatabaseException('Failed to add watchlist'));
      // act
      final result = await repository.saveWatchlistTVSeries(testTVSeriesDetail);
      // assert
      expect(result, Left(DatabaseFailure('Failed to add watchlist')));
    });
  });

  group('remove watchlist', () {
    test('should return success message when remove successful', () async {
      // arrange
      when(mockLocalDataSource.removeWatchlist(testTVSeriesTable))
          .thenAnswer((_) async => 'Removed from watchlist');
      // act
      final result = await repository.removeWatchlistTVSeries(testTVSeriesDetail);
      // assert
      expect(result, Right('Removed from watchlist'));
    });

    test('should return DatabaseFailure when remove unsuccessful', () async {
      // arrange
      when(mockLocalDataSource.removeWatchlist(testTVSeriesTable))
          .thenThrow(DatabaseException('Failed to remove watchlist'));
      // act
      final result = await repository.removeWatchlistTVSeries(testTVSeriesDetail);
      // assert
      expect(result, Left(DatabaseFailure('Failed to remove watchlist')));
    });
  });

  group('get watchlist status', () {
    test('should return watch status whether data is found', () async {
      // arrange
      final tId = 1;
      when(mockLocalDataSource.getTVSeriesById(tId)).thenAnswer((_) async => null);
      // act
      final result = await repository.isAddedToWatchlistTVSeries(tId);
      // assert
      expect(result, false);
    });
  });

  group('get watchlist movies', () {
    test('should return list of TVSeriess', () async {
      // arrange
      when(mockLocalDataSource.getWatchlistTVSeries())
          .thenAnswer((_) async => [testTVSeriesTable]);
      // act
      final result = await repository.getWatchlistTVSeries();
      // assert
      final resultList = result.getOrElse(() => []);
      expect(resultList, [testWatchlistTVSeries]);
    });
  });
}
