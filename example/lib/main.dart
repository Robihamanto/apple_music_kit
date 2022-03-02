import 'package:apple_music_sdk/apple_music_sdk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Music SDK Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AppleMusicHome(),
    );
  }
}

class AppleMusicHome extends StatefulWidget {
  const AppleMusicHome({Key? key}) : super(key: key);

  @override
  _AppleMusicHomeState createState() => _AppleMusicHomeState();
}

class _AppleMusicHomeState extends State<AppleMusicHome> {

  String _token = '';

  @override
  void initState() {
    super.initState();
    _requestUserToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(_token)
        ],
      ),
    );
  }

  void _requestUserToken() async {
    final userToken = await AppleMusicSDK.getUserToken();
    setState(() => _token = userToken ?? '');
  }

}
