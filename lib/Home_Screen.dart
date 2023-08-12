import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part_10_getx/Switch_Controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  SwitchController switchController=Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
   appBar: AppBar(title: Text("Part 10"),
   ),
      body: Center(
        child: Column(
          children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Text("Notifications"),
              Obx(() =>
                  Switch(value: switchController.val.value, onChanged: ( bool value )

                  {

                    switchController.switchChanger(value);

                  }))

          ],
          ),
          ],
        ),
      ),
    );
  }
}
