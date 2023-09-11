import { useEffect, useState } from "react"

import { IMovieDetail } from "../../../types";
import { getMovieDetail } from "../../../api/mubiflixApi";

interface IDetailProps {
  id: number
}

export function useDetail({ id }: IDetailProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [movieDetail, setMovieDetail] = useState<IMovieDetail>({} as IMovieDetail);

  const loadData = async () => {
    try {
      setIsLoading(true);
      const data = await getMovieDetail(id)
      setMovieDetail(data);
    } catch (error) {
      console.error(error);
    } finally {
      setIsLoading(false);
    }
  }

  useEffect(() => {
    loadData();
  }, [])

  return { isLoading, movieDetail }
}