import { useEffect, useState } from "react";
import {
  getMostPopularList,
  getNowPlaying,
  getTopRatedList,
} from "../../../api/mubiflixApi"
import { IMovieDetail } from "../../../types";

export function useHome() {
  const [isLoading, setIsLoading] = useState(false);
  const [mostPopularList, setMostPopularList] = useState<IMovieDetail[]>([]);
  const [topRatedList, setTopRatedList] = useState<IMovieDetail[]>([]);
  const [nowPlaying, setNowPlaying] = useState<IMovieDetail>({} as IMovieDetail);

  const loadData = async () => {
    try {
      setIsLoading(true)
      const data = await Promise.all(
        [
          getNowPlaying(),
          getMostPopularList(),
          getTopRatedList(),
        ]
      );
      setNowPlaying(data[0]);
      setMostPopularList(data[1]);
      setTopRatedList(data[2]);
    } catch (error) {
      console.error(error);
    } finally {
      setIsLoading(false);
    }
  }

  useEffect(() => {
    loadData();
  }, [])

  return { isLoading, mostPopularList, topRatedList, nowPlaying }
}