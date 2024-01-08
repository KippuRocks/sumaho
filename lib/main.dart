import 'package:flutter/material.dart';
import 'package:saifu/widgets/tickets/tickets_list/tickets_page.dart';

void main() {

  runApp(const App());
}

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tickets',
      theme: ThemeData(useMaterial3: true, colorScheme: const ColorScheme.dark()),
      home: const PageManager(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageManager extends StatefulWidget {
  const PageManager({Key? key}) : super(key: key);

  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My tickets"),
      ),
      body: const Expanded(
        child: TicketsPage(),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
