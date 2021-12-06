import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tvseries_table.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/season.dart';
import 'package:ditonton/domain/entities/tvseries.dart';
import 'package:ditonton/domain/entities/tvseries_detail.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

final testTVSeries = TVSeries(
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

final testTVSeriesList = [testTVSeries];

final testTVSeriesDetail = TVSeriesDetail(
    backdrop_path: "/1Ep6YHL5QcrNC1JN6RYalWRPopi.jpg",
    genres: [Genre(
      id: 1,
      name: "Action & Adventure"),
    ],
    id: 1,
    name: "Chucky",
    number_of_seasons: 2,
    origin_country: [
      "US"
    ],
    original_name: "Chucky",
    overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
    popularity: 5154.752,
    poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
    seasons: [
      Season(
        air_date: "2019-07-04",
        episode_count: 24,
        id: 1,
        name: "Season 1",
        overview: "3,700 years after a mysterious light turns every human on the planet into stone, genius boy Senku Ishigami emerges from his petrification into a \"Stone World\" and seeks to rebuild human civilization from the ground up.",
        poster_path: "/rSwOCqbDj7KJgvvnpV1KTzVbaP8.jpg",
        season_number: 1
      )
    ],
    vote_average: 8.8,
    vote_count: 927,
    first_air_date: '2019-07-05'
);

final testWatchlistTVSeries = TVSeries.watchlist(
  id: 1,
  name: "Chucky",
  overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
  poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
);

final testTVSeriesTable = TVSeriesTable(
  id: 1,
  name: "Chucky",
  overview: "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
  poster_path: "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
);

final testTVSeriesMap = {
  'id': 1,
  'name': "Chucky",
  'overview': "After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.",
  'poster_path': "/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg",
};
