import React from 'react'
import { View, Text, TouchableWithoutFeedback, StyleSheet } from 'react-native'
import Icon from 'react-native-vector-icons/FontAwesome5'
import { POPPINS_M } from '../../utils/constants';

interface ICustomButtonProps {
  title: string;
  onPress: () => void
}

export default function CustomButton({ title, onPress }: ICustomButtonProps) {
  return (
    <TouchableWithoutFeedback onPress={onPress}>
      <View style={styles.container}>
        <Icon name='play' style={styles.icon} />
        <Text style={styles.title}>{title}</Text>
      </View>
    </TouchableWithoutFeedback>
  )
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignSelf: 'center',
    paddingHorizontal: 15,
    paddingVertical: 5,
    borderRadius: 15,
    backgroundColor: '#737373'
  },
  icon: {
    alignSelf: 'center',
    color: 'white',
    marginRight: 10,
    fontSize: 16
  },
  title: {
    fontFamily: POPPINS_M,
    fontSize: 16,
    color: "white"
  }
})