import { View, Text, StyleSheet } from 'react-native'
import React from 'react'
import CardImage from '../atoms/CardImage'
import { ICastMovie } from '../../types'
import { POPPINS_M } from '../../utils/constants'

interface ICastProps {
  cast: ICastMovie
}

export default function CastCard({ cast }: ICastProps) {
  return (
    <View style={{
      marginRight: 8,
    }}>
      <CardImage
        pathImage={cast.pathImage}
        height={100}
        width={100}
        shape='circle'
      />
      <Text style={styles.character}>{cast.character}</Text>
      <Text style={styles.name}>{cast.name}</Text>
    </View>
  )
}

const styles = StyleSheet.create({
  character: {
    color: 'white',
    fontFamily: POPPINS_M,
    fontSize: 10,
    marginTop: 8,
    textAlign: 'center'

  },
  name: {
    color: 'white',
    fontFamily: POPPINS_M,
    fontSize: 9,
    textAlign: 'center'
  },
})