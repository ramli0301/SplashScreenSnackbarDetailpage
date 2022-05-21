import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest5_1915026040_ramli/text_controller.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Gender { male, female }

class _MyHomePageState extends State<MyHomePage> {
  String name = "", address = "";

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  Gender? jenisKelamin = Gender.male;
  bool? nilaiCheckbox = false;
  List<String> content = ["Instagram", "Walpapers", "Banner", "Resume"];
  String contentGroup = "";

  @override
  void dispose() {
    // TODO: implement dispose

    nameController.dispose();
    addressController.dispose();
    super.dispose();
  }
  final CounterController myCounterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Canva App"),
        flexibleSpace: Obx(
          () => Container(
            color: myCounterController.switchValue.value
                ? Colors.black
                : Colors.purple,
          ),
        ),
        actions: [
          Obx(
            () => Switch(
              value: myCounterController.switchValue.value,
              onChanged: (newValue) {
                myCounterController.switchValue.value = newValue;
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Divider(),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            maxLines: 1,
            controller: addressController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email Address",
            ),
          ),
          Divider(),
          Text(
            "Genre",
            style: TextStyle(fontSize: 14),
          ),
          ListTile(
            leading: Radio(
              value: Gender.male,
              groupValue: jenisKelamin,
              onChanged: (Gender? value) {
                setState(() {
                  jenisKelamin = value;
                });
              },
            ),
            title: Text("Male"),
          ),
          ListTile(
            leading: Radio(
              value: Gender.female,
              groupValue: jenisKelamin,
              onChanged: (Gender? value) {
                setState(() {
                  jenisKelamin = value;
                });
              },
            ),
            title: Text("Female"),
          ),
          Divider(),
          Text("Browse Content"),
          for (var item in content)
            Row(
              children: [
                Radio(
                  value: item,
                  groupValue: contentGroup,
                  onChanged: (newValue) {
                    setState(() {
                      contentGroup = newValue.toString();
                    });
                  },
                ),
                Text(item),
              ],
            ),
          Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("Data telah di simpan"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.purple,
                );
                setState(() {
                  name = nameController.text;
                  address = addressController.text;
                });
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
              },
              child: Text("Save"),
            ),
          ),
          Divider(),
          Text(
            "Your Name: ${name} ",
          ),
          Divider(),
          Text(
            "Your Address: ${address} ",
          ),
          Divider(),
          Text(
            "Your Genre: ${jenisKelamin} ",
          ),
          Divider(),
          Text(
            "Your Content: ${contentGroup} ",
          )
        ],
      ),
    );
  }
}