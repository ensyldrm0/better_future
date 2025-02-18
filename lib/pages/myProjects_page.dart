import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  String appBarTitle = "Projelerim";

  @override
  Widget build(BuildContext context) {
    var profilList = [
      "Projelerim",
      "Projelerim",
      "Projelerim",
      "Projelerim",
      "Projelerim ",
      "Projelerim",
      "Projelerim",
      "Projelerim",
      "Projelerim",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: ListView.builder(
          itemCount: profilList.length,
          itemBuilder: (context, indeks) {
            return SizedBox(
              height: 80,
              child: GestureDetector(
                onTap: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AramaSayfasi()),
                  );*/
                },
                child: Card(
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.architecture,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text(profilList[indeks]),
                      const Spacer(),
                      const Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
