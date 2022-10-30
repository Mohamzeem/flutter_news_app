import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_block/view/screens/settings_screen.dart';
import '../../controller/states_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String titleName = "Sports";
  final StatesController controller = Get.put(StatesController());
  var myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StatesController>(
      init: StatesController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: titleName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' News',
                  style: Get.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.snackbar(
                  duration: const Duration(seconds: 20),
                  backgroundColor: Colors.blue,
                  'title',
                  'message',
                  userInputForm: Form(
                    child: TextFormField(
                      controller: myController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Empty Search';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        Get.to(() => SettingsScreen(),
                            arguments: {'name': myController.text});
                        Get.back();
                        myController.clear();
                      },
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: Get.textTheme.titleSmall),
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex,
          items: controller.bottomItems,
          onTap: (index) {
            controller.changeBottomNavBar(index);

            if (index == 0) {
              titleName = 'Sports';
            } else if (index == 1) {
              titleName = 'Science';
            } else if (index == 2) {
              titleName = 'Business';
            } else if (index == 3) {
              titleName = 'Settings';
            }
          },
        ),
        body: SafeArea(
          child: controller.egyptScreens[controller.currentIndex],
        ),
        // floatingActionButton: FloatingActionButton(
        //     backgroundColor: Colors.amber,
        //     onPressed: () {
        //       showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             content: Text(myController.text),
        //           );
        //         },
        //       );
        //     }),
      ),
    );
  }
}
