import { View, Text, StyleSheet, TouchableWithoutFeedback, TouchableOpacity } from 'react-native'
import React from 'react'
import CardImage from '../atoms/CardImage';
import { IMovieDetail } from '../../types';
import { BEBAS } from '../../utils/constants';

interface IMovieCardProps {
  customStyle: any;
  id: number;
  onPress: (id: number) => void;
  pathImage: string;
  title: string;
}

export default function MovieCard({ id, title, onPress, pathImage, customStyle }: IMovieCardProps) {
  const handleOnPress = () => {
    onPress(id);
  }
  return (
    <TouchableOpacity
      onPress={handleOnPress}
      style={[styles.item, customStyle]}
    >
      <View style={styles.container}>
        <CardImage
          pathImage={pathImage}
          width={120}
          height={148}
          radius={16}
        />
        <Text style={styles.title}>{title}</Text>
      </View>
    </TouchableOpacity>
  )
}

const styles = StyleSheet.create({
  item: {
    marginLeft: 8,
    marginRight: 8,
    alignSelf: 'center'
  },
  container: {
    position: 'relative',
    width: 'auto',
    height: 'auto'
  },
  title: {
    position: 'absolute',
    bottom: 20,
    left: 15,
    right: 15,
    fontFamily: BEBAS,
    color: 'white',
    fontSize: 20,
    backgroundColor: 'rgba(0,0,0,0.867)',
    paddingVertical: 2,
    paddingHorizontal: 5,
    borderRadius: 5,
    textAlign: 'center'
  }
});