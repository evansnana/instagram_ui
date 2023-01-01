import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/buttonPage.dart/instagram_api.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 180,
            child: ListView.builder(
                itemCount: 19,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          height: 160,
                          width: 134,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/1.70,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                            ),
                            Container(
                              child: Text("Evans Addo",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    color: Colors.grey,
                  )
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
