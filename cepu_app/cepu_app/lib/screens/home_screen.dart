import 'package:flutter/material.dart';
import 'package:cepu_app/screens/sign_up_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cepu_app/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

    @override
  State<HomeScreen> createState() => _HomeScreenState();
}


  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: _showCategoryFilter,
            icon: const Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: () {
              SignUp(context);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
}