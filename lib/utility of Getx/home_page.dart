import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_yt/state%20Management/counter_getx.dart';
import 'package:getx_yt/state%20Management/favlist_getx.dart';
import 'package:getx_yt/state%20Management/imagepicker_getx.dart';
import 'package:getx_yt/state%20Management/login_getx.dart';
import 'package:getx_yt/state%20Management/slider_getx.dart';
import 'package:getx_yt/state%20Management/switch_getx.dart';
import 'package:getx_yt/utility%20of%20Getx/launguage_screen.dart';
import 'package:getx_yt/utility%20of%20Getx/second_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorial'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GetX Dialogue Alert
            Card(
              child: ListTile(
                title: const Text("GetX Dialogue Alert"),
                subtitle: const Text("Dialogue Alert from GetX"),
                onTap: () {
                  Get.defaultDialog(
                      title: "GetX Dialogue",
                      titlePadding: const EdgeInsets.only(top: 20),
                      middleText: "Are you sure?",
                      contentPadding: const EdgeInsets.all(20),
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Yes")),
                      cancel: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("No")));
                },
              ),
            ),
            // GetX bottomSheet
            Card(
              child: ListTile(
                title: const Text("GetX bottomSheet"),
                subtitle: const Text("BottomSheet from GetX"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light Mode"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text("Dark Mode"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // GetX Navigation
            Card(
              child: ListTile(
                title: const Text("GetX Navigation"),
                subtitle: const Text("Navigation from GetX"),
                onTap: () {
                  Get.to(()=>const SecondScreen());
                },
              ),
            ),
            // GetX Launguage Change
            Card(
              child: ListTile(
                title: const Text("GetX Language Change"),
                subtitle: const Text("Language Change from GetX"),
                onTap: () {
                 Get.to(()=>const LaunguageScreen());
                },
              ),
            ),
            // GetX count increament
            Card(
              child: ListTile(
                title: const Text("GetX count increament"),
                subtitle: const Text("Count increament from GetX"),
                onTap: () {
                  Get.to(()=>const CounterGetx());
                },
              ),
            ),
            // GetX slider 
            Card(
              child: ListTile(
                title: const Text("GetX Slider"),
                subtitle: const Text("Slider from GetX"),
                onTap: () {
                  Get.to(()=>const SliderGetx());
                },
              ),
            ),
            // GetX Switch
            Card(
              child: ListTile(
                title: const Text("GetX Switch"),
                subtitle: const Text("Switch from GetX"),
                onTap: () {
                  Get.to(()=>const SwitchGetx());
                },
              ),
            ),
            //favrite list
            Card(
              child: ListTile(
                title: const Text("GetX favrite list"),
                subtitle: const Text("favrite list from GetX"),
                onTap: () {
                  Get.to(()=>const FavlistGetx());
                },
              ),
            ),
            //image picker 
            Card(
              child: ListTile(
                title: const Text("GetX Image picker"),
                subtitle: const Text("Image picker from GetX"),
                onTap: () {
                  Get.to(()=>const ImagepickerGetx());
                },
              ),
            ),
            //login with getX
            Card(
              child: ListTile(
                title: const Text("GetX Login"),
                subtitle: const Text("Login with GetX"),
                onTap: () {
                  Get.to(()=>const LoginGetx());
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Vasu Nageshri",
            "This is hi from GetX Snackbar",
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
