import 'package:flutter/material.dart';
import 'package:pianino_app/widgets/custom_black_button.dart';
import 'package:pianino_app/widgets/custom_white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff202637),
        foregroundColor: Colors.white,
        title: const Text(
          'My Piano App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.white,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Stack(
                      children: [
                        Row(
                          children: [
                            CustomWhiteButton(
                              title: 'f1',
                              nota: 'do',
                            ),
                            CustomWhiteButton(
                              title: 'f2',
                              nota: 'do',
                            ),
                            CustomWhiteButton(
                              title: 'f3',
                              nota: 're',
                            ),
                            CustomWhiteButton(
                              title: 'f4',
                              nota: 'mi',
                            ),
                            CustomWhiteButton(
                              title: 'f5',
                              nota: 'fa',
                            ),
                            CustomWhiteButton(
                              title: 'f6',
                              nota: 'sol',
                            ),
                            CustomWhiteButton(
                              title: 'f7',
                              nota: 'lya',
                            ),
                          ],
                        ),
                        Positioned(
                          left: 32,
                          child: Row(
                            children: [
                              CustomBlackButton(
                                title: 'f1',
                                nota: 'do',
                              ),
                              CustomBlackButton(
                                title: 'f2',
                                nota: 're',
                              ),
                              CustomBlackButton(
                                title: 'f3',
                                visible: false,
                                nota: 'mi',
                              ),
                              CustomBlackButton(
                                title: 'f4',
                                nota: 'fa',
                              ),
                              CustomBlackButton(
                                title: 'f5',
                                nota: 'sol',
                              ),
                              CustomBlackButton(
                                title: 'f6',
                                nota: 'lya',
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
