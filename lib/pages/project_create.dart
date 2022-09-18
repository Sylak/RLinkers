import 'package:flutter/material.dart';
import '/widgets/navigationdrawerwidget.dart';
import '/pages/project_page.dart';
import 'package:file_picker/file_picker.dart';

class ProjectCreate extends StatefulWidget {
const ProjectCreate({Key? key}) : super(key: key);

@override
_ProjectCreateState createState() => _ProjectCreateState();
}
class _ProjectCreateState extends State<ProjectCreate> {

  void _pickFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: 'Select a Project photo',
      type: FileType.image,
    );
    if (result == null) return;
    PlatformFile file = result.files.single;
    print(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Create Project"),
        ),
      body:
      ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
          buildTitle(),
          const SizedBox(height: 15),
          buildDesc(),
          const SizedBox(height: 15),
        ElevatedButton.icon(
          icon: const Icon(Icons.add_a_photo),
            label: const Text('Project Photo'),
            onPressed: () {
            _pickFile();
            }),
          const SizedBox(height: 15),
        ElevatedButton.icon(
          icon: const Icon(Icons.article),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProjectPage(),
            ));
          }, label: const Text("Create Project"))]
    )
      );
  }
  Widget buildTitle() => TextField(
    decoration: InputDecoration(
      hintText: "Project Title",
      labelText: "Project Title",
      border: OutlineInputBorder(),
    ),
  );
  Widget buildDesc() => TextField(
    decoration: InputDecoration(
      hintText: "Project Description",
      labelText: "Project Description",
      border: OutlineInputBorder(),
    ),
  );
}