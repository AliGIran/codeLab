import 'package:codelab/marketPage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:codelab/main.dart';

class MaterialComponentsBasics extends StatelessWidget {
  MaterialComponentsBasics({super.key});

  //todo: add text editing controller
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              const Gap(100),
              const Icon(
                Icons.diamond,
                size: 50,
              ),
              const Text(
                "SHRINE",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: "Username",
                ),
              ),
              const Gap(12),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'data',
                ),
              ),
              const Gap(10),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                      onPressed: () {

                        Navigator.popAndPushNamed(context, '/homeMarketPage');
                      },
                      child: const Text('Next'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
