import { View, Text, StyleSheet, FlatList } from 'react-native'
import React from 'react'
import { ICastMovie } from '../../types'
import { POPPINS_M } from '../../utils/constants'
import CastCard from '../molecules/CastCard'

interface ICastListProps {
  list?: ICastMovie[]
}

export default function CastList({ list = [] }: ICastListProps) {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Cast</Text>
      <FlatList
        data={list}
        horizontal
        showsHorizontalScrollIndicator={true}
        keyExtractor={(item) => item.name}
        renderItem={({ item }) =>
          <CastCard cast={item} />
        }
        style={styles.castList}
      />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    marginVertical: 8
  },
  title: {
    color: 'white',
    fontFamily: POPPINS_M,
    fontSize: 18,
  },
  castList: {
    marginTop: 8,
  }
})