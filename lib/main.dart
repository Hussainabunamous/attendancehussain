import 'package:attendancehussain/screens/std_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


/*getFileContent() async{
  String fileContent = await downloadFile();
  print(fileContent);
}*/

getFileContent() {
  Future<String> fileContent =  downloadFile();
  fileContent.then((resut){
    print(resut);
  });
}

Future<String> downloadFile(){

  Future<String> content = Future.delayed(Duration(seconds: 6), () {
    return "Internet File Content";
  });

  return content;
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Students List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen
      ),
      home: StudentsList(),
    );
  }
}
