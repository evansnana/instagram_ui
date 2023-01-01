import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/buttonPage.dart/instagram_api.dart';

class Search extends StatelessWidget {
  const Search({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   ListView(
              children: [
                 Row(
              children: [
                Container(
                  width: 320,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Search",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey))),
                  
                  ),
                ),
                Icon(
                  Icons.person_add_alt
                )
              ],
            ),
            SizedBox(
             height: 15,
            ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    
                    ),
                    itemCount: 10,
                   itemBuilder: (context, index)=> Container(
                    height: MediaQuery.of(context).size.height/4,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                    color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage(instagramModel[index].images!),
                        fit: BoxFit.cover
                        )
                    ),
                   )
                   ),
              ],
            ),
     
    );
  }
}
