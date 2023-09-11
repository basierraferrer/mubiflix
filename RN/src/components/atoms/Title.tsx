import { View, Text, StyleSheet } from 'react-native'
import React from 'react'

export default function Title() {
  return (
    <Text style={styles.title}>Mubiflix</Text>
  )
}

const styles = StyleSheet.create({
  title: {
    fontFamily: 'BebasNeue-Regular',
    fontSize: 50,
    color: 'white',
    alignSelf: 'center'
  }
});