import Config from "react-native-config";
import { IMovieDetail } from "../types";

function getUri(path: string) {
  return `${Config.API_URL}${path}`;
}

export async function getMostPopularList() {
  try {
    const url = getUri('/api/list/mostpopular');
    const response = await fetch(url);
    const result = await response.json() as IMovieDetail[];
    return result;
  } catch (error) {
    throw error;
  }
}

export async function getTopRatedList() {
  try {
    const url = getUri('/api/list/toprated');
    const response = await fetch(url);
    const result = await response.json() as IMovieDetail[];
    return result;
  } catch (error) {
    throw error;
  }
}

export async function getNowPlaying() {
  try {
    const url = getUri('/api/list/nowplaying/1');
    const response = await fetch(url);
    const result = await response.json() as IMovieDetail[];
    return result[0];
  } catch (error) {
    throw error;
  }
}

export async function getMovieDetail(id: number) {
  try {
    const url = getUri(`/api/detail/${id}`);
    const response = await fetch(url);
    const result = await response.json() as IMovieDetail;
    return result;
  } catch (error) {
    throw error;
  }
}