import React from 'react';
import { View, Image, TouchableOpacity, StyleSheet, ViewStyle } from 'react-native';
import { NO_AVAILABLE_IMAGE, URL_IMAGE } from '../../utils/constants';

interface CardImageProps {
  pathImage?: string;
  width?: number;
  height?: number;
  margin?: any;
  fitImage?: 'cover' | 'contain' | 'stretch' | 'repeat';
  opacity?: number;
  shape?: 'rectangle' | 'circle';
  radius?: number;
  onPressed?: () => void;
}

const CardImage: React.FC<CardImageProps> = ({
  pathImage = '',
  width,
  height,
  margin,
  fitImage = 'cover',
  opacity = 1.0,
  shape = 'rectangle',
  radius,
  onPressed,
}) => {
  let source = { uri: `${URL_IMAGE}${pathImage}` }
  // Set the default pathImage if it's empty
  if (!pathImage.length) {
    source = require('../../assets/img/noAvailable.jpg')
  }

  return (
    <View
      style={[
        styles.container,
        {
          width,
          height,
          margin,
          borderRadius: radius
        },
        shape === 'circle' && { borderRadius: width ? width / 2 : 100 },
      ]}
    >
      <Image
        source={source}
        style={[
          styles.image,
          { width, height, opacity },
          { resizeMode: fitImage },
        ]}
      />
      {onPressed && (
        <TouchableOpacity
          style={styles.touchable}
          onPress={onPressed}
          activeOpacity={0.7}
        />
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    overflow: 'hidden',
    width: 'auto',
    height: 'auto'
  },
  image: {
    width: '100%',
    height: '100%',
  },
  circleShape: {
    borderRadius: 100, // Make it a circle if shape is 'circle'
  },
  touchable: {
    ...StyleSheet.absoluteFillObject,
  },
});

export default CardImage;
