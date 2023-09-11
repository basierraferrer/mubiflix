import { View, Text, StyleSheet } from 'react-native'
import React from 'react'
import Logo from '../atoms/Logo'
import Title from '../atoms/Title'

export default function Header() {
  return (
    <View style={styles.header}>
      <Logo />
      <Title />
    </View>
  )
}

const styles = StyleSheet.create({
  header: {
    height: 'auto',
    flexDirection: 'row',
  }
})