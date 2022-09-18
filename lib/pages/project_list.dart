import 'package:flutter/material.dart';
import '/widgets/navigationdrawerwidget.dart';
import '/pages/project_page.dart';
import '/pages/project_create.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  addEncabezadoPubli(String texto, double fontSize) {
    return (Row(children: [
      SizedBox(
        width: 30,
      ),
      Text(
        texto,
        //textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: fontSize, decorationStyle: TextDecorationStyle.dotted),
      ),
      SizedBox(
        width: 40,
      ),

    ]));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton.icon(
                      icon: const Icon(Icons.article),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProjectCreate(),
                        ));
                      },
                      label: const Text("Create Project"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade100, width: 5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    addEncabezadoPubli("Ongoing Projects", 24),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20.0),
                        children: <Widget>[
                          ListTile(
                          title: Text("Ongoing Project 1"),
                              onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProjectPage(),));
                              },
                          ),
                          ListTile(
                            title: Text("Ongoing Project 2"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                          ListTile(
                            title: Text("Ongoing Project 3"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                          ListTile(
                            title: Text("Ongoing Project 4"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                height: 300,
                //color: Colors.deepOrangeAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade100, width: 5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    addEncabezadoPubli("Completed Projects", 24),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20.0),
                        children: <Widget>[
                          ListTile(
                            title: Text("Completed Project 1"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                          ListTile(
                            title: Text("Completed Project 2"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                          ListTile(
                            title: Text("Completed Project 3"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                          ListTile(
                            title: Text("Completed Project 4"),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProjectPage(),));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                height: 300,
                //color: Colors.deepOrangeAccent,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
    ));
  }
}