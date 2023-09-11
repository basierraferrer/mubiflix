import { View, Text } from 'react-native'
import React from 'react'
import { NavigationContainer, DarkTheme } from '@react-navigation/native'
import NativeStackNavigation from './src/navigation/NativeStackNavigation'

const MyTheme = {
  ...DarkTheme,
  colors: {
    ...DarkTheme.colors,
    background: '#0B1445'
  }
}

export default function App() {
  return (
    <NavigationContainer theme={MyTheme}>
      <NativeStackNavigation />
    </NavigationContainer>
  )
}