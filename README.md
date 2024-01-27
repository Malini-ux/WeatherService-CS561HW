
# Weather Service Swift Protocol

To fetch the current temperature based on location.

## Overview
A protocol is defined for fetching temperature asynchronously and implements it using Alamofire for networking. OpenWeatherMap API service is used to extract temperature from the response and returned as an integer, or an error is thrown if there's an issue with the network request or response validation.

## API Reference

#### OpenWeatherMap API
To make requests to the OpenWeatherMap API and retrieve weather information:
```http
  GET /api/weather?q=corvallis&units=imperial&appid=YOUR_API_KEY
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |
| `units` | `string` | **Required**. units - use imperial for Fahrenheit. |
| `q` | `string` | **Required**. City for weather info. |

