import "package:flutter/material.dart";
import 'package:flutter_application_2/views/Slider_window.dart';

class ActionView extends StatelessWidget {
  const ActionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(25),
          child: Text(
            "Actions",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          alignment: Alignment.topLeft,
        ),
        Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 0,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Job Overview"),
                      ],
                    ),
                    Icon(Icons.arrow_right_outlined),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 50,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Work Items"),
                      ],
                    ),
                    Icon(Icons.arrow_right_outlined),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 100,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Service workers"),
                      ],
                    ),
                    Icon(Icons.arrow_right_outlined),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 150,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Invoices"),
                      ],
                    ),
                    Icon(Icons.arrow_right_outlined),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 200,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Help & Support"),
                      ],
                    ),
                    Icon(Icons.arrow_right_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SliderWindow(),

      ],
    );
  }
}
