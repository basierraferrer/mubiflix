import { View, TextInput, StyleSheet } from 'react-native'
import React from 'react'
import Icon from 'react-native-vector-icons/FontAwesome5'

export default function Search() {
  return (
    <View style={styles.container}>
      <TextInput
        placeholder='Search...'
        style={styles.textInput}
        placeholderTextColor='#A9ADC2'
      />
      <Icon
        name='search'
        style={styles.icon}
      />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    marginVertical: 10,
    backgroundColor: '#252B44',
    paddingHorizontal: 6,
    borderRadius: 10,
    flexDirection: 'row',
    justifyContent: 'space-between'
  },
  textInput: {
    fontFamily: 'BebasNeue-Regular',
    fontSize: 16,
    fontWeight: 'normal',
    color: '#A9ADC2'
  },
  icon: {
    alignSelf: 'center',
    paddingEnd: 12,
    fontSize: 14,
    color: '#A9ADC2'
  }
})