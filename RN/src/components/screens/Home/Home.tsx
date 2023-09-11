import { SafeAreaView, ScrollView, StyleSheet, Text } from 'react-native'
import React from 'react'

import Header from '../../molecules/Header'
import Search from '../../molecules/Search'
import Feature from '../../organisms/Feature'
import MovieList from '../../organisms/MovieList'

import { useHome } from './useHome'
import { NativeStackScreenProps } from '@react-navigation/native-stack'
import { TNavParams } from '../../../types'

export default function HomeScreen({ navigation }: NativeStackScreenProps<TNavParams, 'Home'>) {
  const { isLoading, mostPopularList, topRatedList, nowPlaying } = useHome();

  const handlePress = (id: number) => {
    navigation.navigate('Details', { id })
  }

  return (
    <ScrollView style={styles.container}>
      <Header />
      <Search />
      <Feature
        isLoading={isLoading}
        title={nowPlaying!.title}
        pathImage={nowPlaying!.pathBackgroud}
        onPress={() => console.log('Feature pressed...')}
      />
      <MovieList
        title='Top rated'
        isLoading={isLoading}
        list={topRatedList}
        hasError={false}
        onPress={handlePress}
      />
      <MovieList
        title='Most popular'
        isLoading={isLoading}
        list={mostPopularList}
        hasError={false}
        onPress={handlePress}
      />
    </ScrollView >
  )
}

const styles = StyleSheet.create({
  container: {
    padding: 20,
  },
  loader: {
    justifyContent: 'center'
  }
})