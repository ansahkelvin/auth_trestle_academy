import 'package:flutter/material.dart';
import 'package:flutter_firebase/authentication/providers/auth_provider.dart';
import 'package:flutter_firebase/global/firestore/firestore_crud.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirestoreCrud crud = FirestoreCrud();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () async {
              await Provider.of<AuthProvider>(context, listen: false).logout();
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: crud.readData(),
        builder: (context, snapshot) => const Center(
          child: Text(""),
        ),
      ),
    );
  }
}
