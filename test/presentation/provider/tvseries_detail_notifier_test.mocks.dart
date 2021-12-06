// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/provider/movie_detail_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i6;
import 'package:ditonton/domain/entities/tvseries.dart' as _i9;
import 'package:ditonton/domain/entities/tvseries_detail.dart' as _i7;
import 'package:ditonton/domain/repositories/tvseries_repository.dart' as _i2;
import 'package:ditonton/domain/usecases/get_tvseries_detail.dart' as _i4;
import 'package:ditonton/domain/usecases/get_tvseries_recomendations.dart' as _i8;
import 'package:ditonton/domain/usecases/get_watchlist_status_tvseries.dart' as _i10;
import 'package:ditonton/domain/usecases/remove_watchlist_tvseries.dart' as _i12;
import 'package:ditonton/domain/usecases/save_watchlist_tvseries.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeTVSeriesRepository extends _i1.Fake implements _i2.TVSeriesRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [GetTVSeriesDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTVSeriesDetail extends _i1.Mock implements _i4.GetTVSeriesDetail {
  MockGetTVSeriesDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVSeriesRepository()) as _i2.TVSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.TVSeriesDetail>> execute(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<_i3.Either<_i6.Failure, _i7.TVSeriesDetail>>.value(
              _FakeEither<_i6.Failure, _i7.TVSeriesDetail>())) as _i5
          .Future<_i3.Either<_i6.Failure, _i7.TVSeriesDetail>>);
}

/// A class which mocks [GetTVSeriesRecommendations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTVSeriesRecommendations extends _i1.Mock
    implements _i8.GetTVSeriesRecommendations {
  MockGetTVSeriesRecommendations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVSeriesRepository()) as _i2.TVSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i9.TVSeries>>> execute(dynamic id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<_i3.Either<_i6.Failure, List<_i9.TVSeries>>>.value(
              _FakeEither<_i6.Failure, List<_i9.TVSeries>>())) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i9.TVSeries>>>);
}

/// A class which mocks [GetWatchListStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchListStatusTVSeries extends _i1.Mock
    implements _i10.GetWatchListStatusTVSeries {
  MockGetWatchListStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVSeriesRepository()) as _i2.TVSeriesRepository);
  @override
  _i5.Future<bool> execute(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [SaveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchlistTVSeries extends _i1.Mock implements _i11.SaveWatchlistTVSeries {
  MockSaveWatchlistTVSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVSeriesRepository()) as _i2.TVSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(_i7.TVSeriesDetail? tvSeriesDetail) =>
      (super.noSuchMethod(Invocation.method(#execute, [tvSeriesDetail]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [RemoveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlistTVSeries extends _i1.Mock implements _i12.RemoveWatchlistTVSeries {
  MockRemoveWatchlistTVSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVSeriesRepository()) as _i2.TVSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(_i7.TVSeriesDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#execute, [movie]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}
