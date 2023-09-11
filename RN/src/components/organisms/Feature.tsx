import { View, Text, StyleSheet, Button } from 'react-native'
import React from 'react'
import CardImage from '../atoms/CardImage'
import CustomButton from '../atoms/CustomButton'
import Loader from '../atoms/Loader';

interface IFetureMovie {
  isLoading?: boolean;
  pathImage: string;
  title: string;
  onPress: () => void
}

export default function Feature({
  isLoading,
  onPress,
  pathImage,
  title
}: IFetureMovie) {

  if (isLoading) {
    return <Loader type="card" />
  }

  return (
    <View style={styles.container}>
      <CardImage
        pathImage={pathImage}
        margin={styles.marginImg}
        height={200}
        radius={10}
      />
      <Text style={styles.title}>{title}</Text>
      <View style={styles.containerElevated}>
        <CustomButton
          title='Watch'
          onPress={onPress}
        />
      </View>
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    position: 'relative',
    marginVertical: 6,
  },
  title: {
    color: 'white',
    backgroundColor: 'rgba(0,0,0,0.867)',
    fontFamily: 'BebasNeue-Regular',
    fontSize: 30,
    paddingHorizontal: 5,
    paddingVertical: 2,
    borderRadius: 5,
    position: 'absolute',
    top: 30,
    left: 15
  },
  marginImg: {
    marginHorizontal: 8,
    marginVertical: 20
  },
  containerElevated: {
    position: 'absolute',
    width: '100%',
    left: 15,
    bottom: 30,
    paddingHorizontal: 10,
    flexDirection: 'row',
    justifyContent: 'space-between',
  }
})