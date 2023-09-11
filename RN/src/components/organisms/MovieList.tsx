import { View, Text, FlatList, ActivityIndicator, StyleSheet } from 'react-native'
import React from 'react'
import Icon from 'react-native-vector-icons/FontAwesome5'

import Loader from '../atoms/Loader'
import { IMovieDetail } from '../../types';
import { POPPINS_M } from '../../utils/constants';

import MovieCard from '../molecules/MovieCard'

interface IMovieListProps {
  isLoading?: boolean;
  list: IMovieDetail[];
  hasError: boolean;
  title: string;
  onPress: (id: number) => void
}

export default function MovieList({
  isLoading,
  list,
  title,
  hasError,
  onPress,
}: IMovieListProps) {

  if (isLoading) {
    return <Loader type='list' />
  }

  return (
    <View style={styles.container}>
      <View style={styles.rowContainer}>
        <Text style={styles.title}>{title}</Text>
        <Icon name="chevron-right" style={styles.icon} />
      </View>
      <FlatList
        data={list}
        horizontal
        showsHorizontalScrollIndicator={true}
        keyExtractor={(item) => String(item.id)}
        renderItem={({ item, index }) =>
          <MovieCard
            id={item.id}
            title={item.title}
            onPress={onPress}
            pathImage={item.pathBackgroud}
            customStyle={index === 0 ? { marginLeft: 0 } : undefined}
          />
        }
        style={styles.flatListContainer}
      />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    paddingHorizontal: 5,
    marginVertical: 10,
    width: 'auto',
    height: 'auto'
  },
  rowContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  title: {
    alignSelf: 'center',
    fontFamily: POPPINS_M,
    color: 'white',
    fontSize: 18,
  },
  icon: {
    alignSelf: 'center',
    color: 'white',
    fontSize: 16
  },
  flatListContainer: {
    width: 'auto',
    height: 172,
  }
})