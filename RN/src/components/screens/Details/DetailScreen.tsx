import { ScrollView, StyleSheet } from 'react-native'
import React, { useEffect } from 'react'
import Icon from 'react-native-vector-icons/FontAwesome5'
import { NativeStackScreenProps } from '@react-navigation/native-stack'

import { TNavParams } from '../../../types'

import Header from './components/Header'
import Body from './components/Body'
import Loader from '../../atoms/Loader'

import { useDetail } from './useDetail'
import { SafeAreaView } from 'react-native-safe-area-context'

export default function DetailScreen({ route }: NativeStackScreenProps<TNavParams, 'Details'>) {
  const { isLoading, movieDetail } = useDetail({ id: route.params.id });

  return (
    <SafeAreaView style={styles.container}>
      {isLoading ?
        <Loader isFullScreen /> :
        <ScrollView >
          <Header pathImage={movieDetail.posterPath} />
          <Body movieInfo={movieDetail} />
        </ScrollView>
      }
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
})