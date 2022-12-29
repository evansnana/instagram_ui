import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:instagram/buttonPage.dart/Instagram_Api/instagram_api.dart';

class Movie extends StatelessWidget {
  Movie({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _controller,
        itemCount: 9,
        itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      instagramModel[index].images!,
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => _controller.nextPage(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeIn),
                          child: const Icon(
                            Icons.arrow_downward_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(FeatherIcons.heart,
                                size: 40, semanticLabel: "Like")),
                        const SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FeatherIcons.package,
                              size: 40,
                              semanticLabel: "Package",
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.comment,
                              size: 40, semanticLabel: "Comment"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
