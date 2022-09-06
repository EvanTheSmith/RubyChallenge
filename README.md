# Ruby Challenge

Hi. Welcome to my attempt at the **Ruby Engineer 60 Minute Challenge** :thumbsup:

To get things started, install the necessary gems and start the server using the following:
```js
   bundle install && rails s
```
The server can then be accessed via *localhost:3000* in a Web browser or *curl localhost:3000* in a terminal.

My app uses the **httparty gem** to make GET requests to the three URLs. A ternary operator which checks for content_type is utilized for error handling, identifying situations where plain text comes through instead of valid JSON. The end result is rendered as JSON to the root path.
