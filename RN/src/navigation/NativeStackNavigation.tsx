import React from 'react'
import { createNativeStackNavigator } from '@react-navigation/native-stack'

import HomeScreen from '../components/screens/Home/Home';
import DetailScreen from '../components/screens/Details/DetailScreen';
import { TNavParams } from '../types';

const Stack = createNativeStackNavigator<TNavParams>();

export default function NativeStackNavigation() {
  return (
    <Stack.Navigator>
      <Stack.Screen
        name="Home"
        component={HomeScreen}
        options={{
          title: '',
          headerTransparent: true,
          animation: 'slide_from_left'
        }}
      />
      <Stack.Screen
        name="Details"
        component={DetailScreen}
        options={{
          title: '',
          headerTransparent: true,
          animation: 'slide_from_right',
        }}
      />
    </Stack.Navigator>
  )
}