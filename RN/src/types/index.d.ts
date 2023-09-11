
export interface ICastMovie {
  name: string;
  character: string;
  pathImage: string;
}

export interface IMovieDetail {
  id: number;
  genres: string;
  overview: string;
  pathBackgroud: string;
  posterPath: string;
  releaseYear: string;
  score: number;
  title: string;
  runtime?: number;
  cast?: ICastMovie[]
}

export type TNavParams = {
  Home: undefined,
  Details: {
    id: number
  }
}