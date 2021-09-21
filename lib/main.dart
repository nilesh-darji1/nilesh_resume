import 'package:flutter/material.dart';
import 'package:nilesh_resume/ModelClass.dart';
import 'package:nilesh_resume/list_card.dart';

void main() {
  runApp(const MaterialApp(
    home: NewHomePage(),
  ));
}

/*
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NILESHKUMAR DARJI",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 30.0,
                      letterSpacing: 2.0,
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Android Developer",
                style: TextStyle(color: Colors.grey[500]),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Sarkhej, Ahmedabad",style: TextStyle(color: Colors.grey[400],wordSpacing: 2),)],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  size: 20,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "darjinilnil@gmail.com",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Image.asset(
                  'asset/linkedin.png',
                  scale: 3.5,
                ),const SizedBox(
                  width: 10.0,
                ),Text(
                  "Nilesh Darji",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            Divider(color: Colors.grey[100],height: 20,),
            Row(
              children: [
                Text("Experience-",style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize:20.0),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
*/

class NewHomePage extends StatefulWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  int exe = 0;
  List<modelClass> experience = [
    modelClass(
        "2017-2018", "ExcelPTP", "Android Developer", "Took 6 Month Training"),
    modelClass("2018-2019", "Grubber", "Android Developer",
        "Work as android developer for 1 year"),
    modelClass("2017-2018", "Kaira Software", "Android Developer",
        "Currently working "),

  ];

  late modelClass newModel;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NILESHKUMAR DARJI",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 30.0,
                      letterSpacing: 2.0,
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Android Developer",
                style: TextStyle(color: Colors.grey[500]),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sarkhej, Ahmedabad",
                  style: TextStyle(color: Colors.grey[400], wordSpacing: 2),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  size: 20,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "darjinilnil@gmail.com",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Image.asset(
                  'asset/linkedin.png',
                  scale: 3.5,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Nilesh Darji",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[100],
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Experience-",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  "$exe",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                )
              ],
            ),
            Column(
              children: experience.map((e) => list_card(e,(){
                setState(() {
                  experience.removeAt(1);
                });
              })).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            experience.removeAt(1);
          });
        },
        backgroundColor: Colors.grey.shade800,
        child: const Icon(
          Icons.add,
          color: Colors.grey,
        ),
      ),
    );
  }
}

/*class NewCard extends StatelessWidget {
  modelClass newModel;
  Function delete;
  NewCard(this.newModel,this.delete );



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shadowColor: Colors.grey.shade50,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      color: Colors.grey.shade600,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          Text(
            newModel.year,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
            ),
          ),
          Text(
            newModel.companyName,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
            ),
          ),
          Text(
            newModel.position,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
            ),
          ),
          Text(
            newModel.description,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
            ),
          ),
        IconButton(icon: Icon(Icons.delete,semanticLabel: "Delete",), onPressed:(){delete;})
      ],
    ),
        ));
  }
}*/
