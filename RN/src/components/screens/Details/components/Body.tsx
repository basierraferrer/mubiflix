import { View, Text, StyleSheet } from 'react-native'
import React from 'react'
import { BEBAS, POPPINS_R } from '../../../../utils/constants'
import { IMovieDetail } from '../../../../types'
import CardImage from '../../../atoms/CardImage'
import Icon from 'react-native-vector-icons/FontAwesome5'
import { round } from 'lodash'
import CastList from '../../../organisms/CastList'

interface IBodyProps {
  movieInfo: IMovieDetail
}

function getRuntime(runtime?: number) {
  let transform = '';

  if (runtime) {
    const hours = Math.floor(runtime / 60); // División entera para obtener las horas
    const minutes = runtime % 60; // Resto para obtener los minutos restantes

    if (hours > 0) {
      transform += `${hours} h `;
    }
    transform += `${minutes} min`;
  }

  return transform;
}

const Summary = ({ movieInfo }: IBodyProps) => {
  return (
    <View style={stylesSummary.summaryContainer}>
      <CardImage
        pathImage={movieInfo!.posterPath}
        width={125}
        height={180}
        radius={16}
      />
      <View style={stylesSummary.overviewContainer}>
        <Text style={stylesSummary.overview}>{movieInfo!.overview}</Text>
      </View>
    </View>
  )
}

const Rating = ({ movieInfo }: IBodyProps) => {
  return (
    <View style={stylesRuntime.ratingContainer}>
      <Icon
        color='#FFDC60'
        name="star"
        size={14}
        solid
      />
      <Text style={stylesRuntime.value}>{round(movieInfo.score, 2)}</Text>
      <Icon
        color='white'
        name="user-clock"
        size={14}
        style={stylesRuntime.runtime}
      />
      <Text style={stylesRuntime.value}>{getRuntime(movieInfo.runtime)}</Text>
    </View>
  )
}

export default function Body({ movieInfo }: IBodyProps) {
  return (
    <View style={stylesBody.container}>
      <Text style={stylesBody.title}>{movieInfo!.title}</Text>
      <Text style={stylesBody.subtitle}>{movieInfo!.releaseYear + ', ' + movieInfo!.genres}</Text>
      <Summary movieInfo={movieInfo} />
      <Rating movieInfo={movieInfo} />
      <CastList list={movieInfo.cast} />
    </View>
  )
}

const stylesBody = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
  },
  title: {
    color: 'white',
    fontFamily: BEBAS,
    fontSize: 26,
    marginBottom: 8,
    textAlign: 'center',
  },
  subtitle: {
    color: 'white',
    fontFamily: POPPINS_R,
    fontSize: 13,
    marginBottom: 8,
    textAlign: 'center',
  }
});

const stylesSummary = StyleSheet.create({
  summaryContainer: {
    flexDirection: 'row',
  },
  overviewContainer: {
    flex: 1,
    marginTop: 8,
    marginLeft: 8
  },
  overview: {
    fontFamily: POPPINS_R,
    fontSize: 11,
    color: 'rgba(255,255,255, 0.7)',
    textAlign: 'justify',
  },
})

const stylesRuntime = StyleSheet.create({
  ratingContainer: {
    paddingVertical: 8,
    flexDirection: 'row'
  },
  value: {
    color: 'rgba(255,255,255, 0.7)',
    fontSize: 14,
    marginHorizontal: 5,
  },
  runtime: {
    marginLeft: 11,
    marginRight: 5
  }
})