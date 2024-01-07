import "package:flutter/material.dart";
import "package:flutter_application_2/views/Action_view.dart";
import "package:flutter_application_2/views/Custom_view.dart";

class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BodyView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(18),
          height: 200,
          width: 1000,
          decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(14)),
              border: Border(
                top: BorderSide(color: Colors.grey),
                left: BorderSide(color: Colors.grey),
                right: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              )),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: const Text(
                  "construction",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topLeft,
              ),
              progressBar(),
              Container(
                margin: const EdgeInsets.only(
                  top: 0.0,
                  right: 10.0,
                  left: 10.0,
                  bottom: 0.0,
                ),
                child: Text(
                  "out of 75 task, 39 are completed",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 5.0,
                  right: 10.0,
                  left: 10.0,
                  bottom: 0.0,
                ),
                child: Text(
                  "₹ 4000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Text(
                  "Billed Amount",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
        const ActionView(),
      ],
    );
  }

  Widget progressBar() {
    return const Padding(
      padding: EdgeInsets.only(
        top: 30.0,
        right: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
      child: LinearProgressIndicator(
        minHeight: 6,
        value: 0.5,
        backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}
