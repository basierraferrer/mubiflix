import { uniqueId } from 'lodash';
import React from 'react'
import { ActivityIndicator, StyleSheet, View } from 'react-native'
import { SafeAreaView } from 'react-native-safe-area-context'

interface ILoaderProps {
  isFullScreen?: boolean;
  type?: 'card' | 'list'
}

export default function Loader({ isFullScreen = false, type }: ILoaderProps) {
  const loaders = type === 'list' ? [1, 2, 3] : [0];
  return (
    <View style={[styles.container, type ? styles[type] : {}]}>
      {loaders.map((item) => <ActivityIndicator
        key={uniqueId()}
        color='white'
        size='large'
        style={loaders.length > 1 && styles.itemList}
      />)}
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  card: {
    height: 200,
    borderWidth: 1,
    borderColor: '#737373',
    borderRadius: 10,
    marginVertical: 6,
  },
  list: {
    height: 150,
    borderWidth: 1,
    borderColor: '#737373',
    marginVertical: 6,
    flexDirection: 'row',
    justifyContent: 'space-evenly'
  },
  itemList: {
    borderColor: '#737373',
    borderRadius: 10,
    borderWidth: 1,
    height: 120,
    marginRight: 8,
    width: 60,
  },
  debug: {
    borderWidth: 1,
    borderColor: 'red'
  }
})

