import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/usecases/get_top_rated_movies.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tvseries.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../helpers/tvseries_test_helper.mocks.dart';

void main() {
  late GetTopRatedTVSeries usecase;
  late MockTVSeriesRepository mockTVSeriesRepository;

  setUp(() {
    mockTVSeriesRepository = MockTVSeriesRepository();
    usecase = GetTopRatedTVSeries(mockTVSeriesRepository);
  });

  final tTVSeriess = <TVSeries>[];

  test('should get list of tvseries from repository', () async {
    // arrange
    when(mockTVSeriesRepository.getTopRatedTVSeries())
        .thenAnswer((_) async => Right(tTVSeriess));
    // act
    final result = await usecase.execute();
    // assert
    expect(result, Right(tTVSeriess));
  });
}
