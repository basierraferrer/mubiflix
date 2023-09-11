import { View, Text, Image, StyleSheet } from 'react-native'
import React from 'react'

export default function Logo() {
  return (
    <Image
      style={styles.image}
      source={require('../../assets/img/logo.png')}
    />
  )
}

const styles = StyleSheet.create({
  image: {
    objectFit: 'cover',
    width: 40,
    height: 40,
    marginRight: 10,
    alignSelf: 'center'
  }
})