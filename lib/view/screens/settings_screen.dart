import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_block/controller/settings_controller.dart';
import 'package:new_app_block/view/widgets/articles_image_widget%20copy.dart';
import 'package:new_app_block/view/widgets/articles_texts_widget.dart';
import '../../controller/data_controller copy.dart';
import '../../model/news_model.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final SettingsController controller = Get.put(SettingsController());
  final DataController controllerData = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${controller.savedSearch}'),
        ),
        body: FutureBuilder(
            future: controllerData.getData(
              'https://newsapi.org/v2/everything?q=${controller.savedSearch}&sortBy=publishedAt&apiKey=93242bc15d3b4c2798e5a5b2f6621601',
            ),
            builder: (context, AsyncSnapshot snapshot) {
              NewsModel? data = snapshot.data;
              if (snapshot.hasData) {
                return ListView.separated(
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: SizedBox(
                            height: 230,
                            width: double.infinity,
                            child: Column(
                              children: [
                                ArticlesImageWidget(
                                    image: data!.articles![index].urlToImage
                                        .toString()),
                                ArticlesTextsWidget(
                                  title: data.articles![index].title.toString(),
                                  date: data.articles![index].publishedAt
                                      .toString(),
                                  urlComing:
                                      data.articles![index].url.toString(),
                                ),
                              ],
                            ),
                          ),
                        )),
                    separatorBuilder: ((context, index) => const Divider(
                          color: Colors.blue,
                          height: 10,
                        )),
                    itemCount: data!.articles!.length);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
