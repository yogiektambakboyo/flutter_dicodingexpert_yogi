// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/pages/movie_detail_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i11;
import 'dart:ui' as _i12;

import 'package:ditonton/common/state_enum.dart' as _i9;
import 'package:ditonton/domain/entities/tvseries.dart' as _i10;
import 'package:ditonton/domain/entities/tvseries_detail.dart' as _i7;
import 'package:ditonton/domain/usecases/get_tvseries_detail.dart' as _i2;
import 'package:ditonton/domain/usecases/get_tvseries_recomendations.dart' as _i3;
import 'package:ditonton/domain/usecases/get_watchlist_status_tvseries.dart' as _i4;
import 'package:ditonton/domain/usecases/remove_watchlist_tvseries.dart' as _i6;
import 'package:ditonton/domain/usecases/save_watchlist_tvseries.dart' as _i5;
import 'package:ditonton/presentation/provider/tvseries_detail_notifier.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeGetTVSeriesDetail extends _i1.Fake implements _i2.GetTVSeriesDetail {}

class _FakeGetTVSeriesRecommendations extends _i1.Fake
    implements _i3.GetTVSeriesRecommendations {}

class _FakeGetWatchListStatus extends _i1.Fake
    implements _i4.GetWatchListStatusTVSeries {}

class _FakeSaveWatchlist extends _i1.Fake implements _i5.SaveWatchlistTVSeries {}

class _FakeRemoveWatchlist extends _i1.Fake implements _i6.RemoveWatchlistTVSeries {}

class _FakeTVSeriesDetail extends _i1.Fake implements _i7.TVSeriesDetail {}

/// A class which mocks [TVSeriesDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTVSeriesDetailNotifier extends _i1.Mock
    implements _i8.TVSeriesDetailNotifier {
  MockTVSeriesDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTVSeriesDetail get getTVSeriesDetail =>
      (super.noSuchMethod(Invocation.getter(#getTVSeriesDetail),
          returnValue: _FakeGetTVSeriesDetail()) as _i2.GetTVSeriesDetail);
  @override
  _i3.GetTVSeriesRecommendations get getTVSeriesRecommendations =>
      (super.noSuchMethod(Invocation.getter(#getTVSeriesRecommendations),
              returnValue: _FakeGetTVSeriesRecommendations())
          as _i3.GetTVSeriesRecommendations);
  @override
  _i4.GetWatchListStatusTVSeries get getWatchListStatusTVSeries =>
      (super.noSuchMethod(Invocation.getter(#getWatchListStatusTVSeries),
          returnValue: _FakeGetWatchListStatus()) as _i4.GetWatchListStatusTVSeries);
  @override
  _i5.SaveWatchlistTVSeries get saveWatchlistTVSeries =>
      (super.noSuchMethod(Invocation.getter(#saveWatchlistTVSeries),
          returnValue: _FakeSaveWatchlist()) as _i5.SaveWatchlistTVSeries);
  @override
  _i6.RemoveWatchlistTVSeries get removeWatchlistTVSeries =>
      (super.noSuchMethod(Invocation.getter(#removeWatchlistTVSeries),
          returnValue: _FakeRemoveWatchlist()) as _i6.RemoveWatchlistTVSeries);
  @override
  _i7.TVSeriesDetail get tvseries => (super.noSuchMethod(Invocation.getter(#tvseries),
      returnValue: _FakeTVSeriesDetail()) as _i7.TVSeriesDetail);
  @override
  _i9.RequestState get tvseriesState =>
      (super.noSuchMethod(Invocation.getter(#movieState),
          returnValue: _i9.RequestState.empty) as _i9.RequestState);
  @override
  List<_i10.TVSeries> get tvseriesRecommendations =>
      (super.noSuchMethod(Invocation.getter(#tvseriesRecommendations),
          returnValue: <_i10.TVSeries>[]) as List<_i10.TVSeries>);
  @override
  _i9.RequestState get recommendationState =>
      (super.noSuchMethod(Invocation.getter(#recommendationState),
          returnValue: _i9.RequestState.empty) as _i9.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get isAddedToWatchlist =>
      (super.noSuchMethod(Invocation.getter(#isAddedToWatchlist),
          returnValue: false) as bool);
  @override
  String get watchlistMessage =>
      (super.noSuchMethod(Invocation.getter(#watchlistMessage), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i11.Future<void> fetchTVSeriesDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#fetchTVSeriesDetail, [id]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> addWatchlist(_i7.TVSeriesDetail? tvSeriesDetail) =>
      (super.noSuchMethod(Invocation.method(#addWatchlist, [tvSeriesDetail]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> removeFromWatchlist(_i7.TVSeriesDetail? tvSeriesDetail) =>
      (super.noSuchMethod(Invocation.method(#removeFromWatchlist, [tvSeriesDetail]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> loadWatchlistStatus(int? id) =>
      (super.noSuchMethod(Invocation.method(#loadWatchlistStatus, [id]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  void addListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
