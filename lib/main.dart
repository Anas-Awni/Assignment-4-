import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flutterCourse = false;
  bool reactCourse = false;
  String? flutterPic;
  String? reactPic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          'My Courses',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Please select your course?',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 20,
              thickness: 10,
              color: Colors.black45,
            ),
            CheckboxListTile(
              value: flutterCourse,
              title: const Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Based on Dart language',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.indigoAccent,
                ),
              ),
              secondary: const Icon(
                Icons.book,
                color: Colors.indigoAccent,
                size: 35.0,
              ),
              onChanged: (value) {
                setState(() {
                  flutterCourse = value!;
                  if (value) {
                    flutterPic =
                        "https://www.cloudsavvyit.com/p/uploads/2021/11/af168a3a.jpeg?width=1198&trim=1,1&bg-color=000&pad=1,1";
                  } else {
                    flutterPic = null;
                  }
                });
              },
            ),
            CheckboxListTile(
              value: reactCourse,
              title: const Text(
                'React',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Based on JS language',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.indigoAccent,
                ),
              ),
              secondary: const Icon(
                Icons.book,
                color: Colors.indigoAccent,
                size: 35.0,
              ),
              onChanged: (value) {
                setState(() {
                  reactCourse = value!;
                  if (value) {
                    reactPic =
                        "https://res.cloudinary.com/practicaldev/image/fetch/s--ljmYNm3i--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://www.freecodecamp.org/news/content/images/size/w2000/2020/02/Ekran-Resmi-2019-11-18-18.08.13.png";
                  } else {
                    reactPic = null;
                  }
                });
              },
            ),
            const Divider(
              height: 30.0,
            ),
            if (flutterPic != null) Image.network(flutterPic!),
            if (reactPic != null) Image.network(reactPic!),
          ],
        ),
      ),
    );
  }
}
