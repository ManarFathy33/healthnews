import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthcare_news/models/model.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DataModel> datalist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state");
    getData();
    print(getData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Healthcare "),
        actions: [
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        backgroundColor: Color(0xff104c75),
        elevation: 60.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/doctor.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.4),
                  BlendMode.modulate,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Container(
                height: double.infinity,
                child: datalist.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                datalist[index].title!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // (datalist[index].image == null)
                              //     ? Image.asset("assets/images/notfound.png")
                              //     : Image.network((datalist[index].image!)),
                              // Image(
                              //   image: NetworkImage(datalist[index].image!),
                              // ),
                              Text(
                                datalist[index].publishedAt!,
                                style: TextStyle(color: Color(0xff104c75)),
                              ),
                              Divider(
                                endIndent: 30,
                                indent: 30,
                                thickness: 1,
                                color: Color(0xff104c75),
                              )
                            ],
                          );
                        },
                        itemCount: datalist.length,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<http.Response> getData() async {
    var response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=health&apiKey=5b48b9cb5cd444c69cde624b4bac08b6"));
    print(response.statusCode);
    var data = jsonDecode(response.body);
    dynamic dataList = data['articles'];

    setState(() {
      for (var item in dataList) {
        DataModel model = DataModel();
        model.title = item['title'];
        model.image = item["urlToImage"];
        model.publishedAt = item["publishedAt"];
        datalist.add(model);

        //datalist.add(model);
        //model.image??datalist.add(model);
      }
    });
    return response;
  }
}
