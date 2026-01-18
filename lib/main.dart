import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sajid/todo_notifier_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            print("Todo model builder called");
            final provider = ref.watch(
              todoNotifierProvider.select((value) => value.counter),
            );
            // so by .select method selecting specific state
            return Column(
              children: [
                IconButton(
                  onPressed: () {
                    ref.read(todoNotifierProvider.notifier).increaseCounter();
                  },
                  icon: Icon(Icons.add),
                ),
                Text("$provider"),
                IconButton(
                  onPressed: () {
                    ref.read(todoNotifierProvider.notifier).decreaseCounter();
                  },
                  icon: Icon(Icons.exposure_minus_1),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
