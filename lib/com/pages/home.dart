import 'package:array_counter/com/util/process_array.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  TextEditingController controller = TextEditingController();
  ProcessArray process = ProcessArray();
  int arrayLength = 0;

  @override
  Widget build(BuildContext context) {
    processArray() {
      setState(() {
        arrayLength = process.processArray(controller);
      });
    }

    clearScreen() {
      setState(() {
        controller.clear();
        arrayLength = 0;
      });
    }

    return Scaffold(
        body: Column(
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          controller: controller,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: processArray,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 177, 235)
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: clearScreen,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 177, 235)
                ),  
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          "Number of Elements:  $arrayLength",
          style: const TextStyle(fontSize: 35, color: Colors.white),
        )
      ],
    ));
  }
}
