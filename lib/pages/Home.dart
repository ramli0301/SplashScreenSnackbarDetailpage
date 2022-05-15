import 'package:flutter/material.dart';
import 'package:postest5_1915026040_ramli/pages/details_page.dart';
import 'package:postest5_1915026040_ramli/pages/popular_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    Widget titleHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Let's Enjoy your\n Design",
            ),
          ),
        ],
      );
    }

    Widget Content() {
      return Column(
        children: [
          Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  "New Design",
                  
                ),
              ),
              Text(
                "See All",
                
              ),
              SizedBox(width: 30),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(),
                      ),
                    );
                  },
                  child: PopularImageItem(
                    imageUrl: "instagram.jpeg",
                    location: "Instagram",
                  ),
                ),
                PopularImageItem(
                  imageUrl: "resume.jpeg",
                  location: "Resume",
                ),
                PopularImageItem(
                  imageUrl: "logo_kamera.jpeg",
                  location: "Logo",
                ),
              ],
            ),
          ),
        ],
      );
    }

   
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              titleHeader(),
              SizedBox(height: 35),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}