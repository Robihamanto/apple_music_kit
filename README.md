This package will allow your Flutter app to play a song with Apple Music.

## Features

1. Authenticate the user to obtain user token
2. Play preview music
3. Play personalized music from user

## Getting started

1. Prepare your MusicKit token (detail below)
2.


### How to generate Apple MusicKit token:
1. Get your token from Apple documentation: https://developer.apple.com/documentation/applemusicapi/getting_keys_and_creating_tokens
2. Generate token with this code: https://github.com/pelauimagineering/apple-music-token-generator

## Usage

Setting up your token:
```dart
const userToken = ApplMusicSdk.developerToken = [YOUR APPLE MUSIC KIT TOKEN];
```

Authenticate user to obtain token
```dart
const userToken = ApplMusicSdk.authenticateUser();
```

## Additional information

1. You need to have Apple Developer account program to generate Apple music token
2. You need to have Apple Music subscription if you want to play full music