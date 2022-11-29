import 'package:flutter/material.dart';
import 'package:steamworks/steamworks.dart';

void main() {
  SteamClient.init();
  SteamClient steamClient = SteamClient.instance;

  CSteamId steamId = steamClient.steamUser.getSteamId();

  print("SteamId: $steamId");

  SteamApiCall callId = steamClient.steamUserStats.requestUserStats(steamId);
  print("SteamApiCall first: $callId");

  CallResult cr1 = steamClient.registerCallResult<UserStatsReceived>(
    asyncCallId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats first");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  );

  callId = steamClient.steamUserStats.getNumberOfCurrentPlayers();
  print("SteamApiCall second: $callId");

  CallResult cr2 = steamClient.registerCallResult<UserStatsReceived>(
    asyncCallId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats second");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  );

  Callback cb1 = steamClient.registerCallback<PersonaStateChange>(
    cb: (ptrPersona) {
      print("Persona state changed");
      print("GameId: ${ptrPersona.steamId}");
      print("ChangeFlags: ${ptrPersona.changeFlags}");
    },
  );

  //runApp(const MyApp());
}
/* 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
 */