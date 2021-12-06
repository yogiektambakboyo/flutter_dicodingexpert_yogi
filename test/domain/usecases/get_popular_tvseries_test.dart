import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/usecases/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/get_popular_tvseries.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../helpers/tvseries_test_helper.mocks.dart';

void main() {
  late GetPopularTVSeries usecase;
  late MockTVSeriesRepository mockTVSeriesRpository;

  setUp(() {
    mockTVSeriesRpository = MockTVSeriesRepository();
    usecase = GetPopularTVSeries(mockTVSeriesRpository);
  });

  final tTVSeriess = <TVSeries>[];

  group('Get Popular TVSeries Tests', () {
    group('execute', () {
      test(
          'should get list of movies from the repository when execute function is called',
          () async {
        // arrange
        when(mockTVSeriesRpository.getPopularTVSeries())
            .thenAnswer((_) async => Right(tTVSeriess));
        // act
        final result = await usecase.execute();
        // assert
        expect(result, Right(tTVSeriess));
      });
    });
  });
}
