import { View, Text, StyleSheet, ImageBackground } from 'react-native'
import React from 'react'
import CardImage from '../../../atoms/CardImage'
import { URL_IMAGE } from '../../../../utils/constants'

interface IHeaderProps {
  pathImage: string
}

export default function Header({ pathImage }: IHeaderProps) {
  return (
    <View style={styles.container}>
      <CardImage
        pathImage={pathImage}
        height={316}
        fitImage='stretch'
      />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    height: 'auto',
  }
})