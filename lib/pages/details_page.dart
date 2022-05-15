import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget jumbotron() {
      return Container(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("instagram.jpeg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              )),
        ),
      );
    }

    Widget locationDetails() {
      return Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Instagram", 
            ),
          ],
        ),
      );
    }

    Widget textDetails() {
      return Container(
        width: double.infinity,
       
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
             
            ),
            SizedBox(height: 10),
            Text(
              "Konten Instagram for pray Selamat Hari Raya Idul Fitri 1443 H Minal Aidzin Wal Faizin Mohon Maaf lahir dan batin",        
            ),
          ],
        ),
      );
    }

    Widget bottomBar() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Download Now",
                 
                ),
                SizedBox(height: 3),
                Text(
                  "\$ 1",
                )
              ],
            ),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(         
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Use template",
                
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
  
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                jumbotron(),
                locationDetails(),
                textDetails(),
                bottomBar(),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),      
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
