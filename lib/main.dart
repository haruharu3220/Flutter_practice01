import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> contacts = [
    {'name': '山田花子', 'number': '070-1234-5678', 'address': '東京都'},
    {'name': '鈴木一郎', 'number': '080-1234-5678', 'address': '神奈川'},
    {'name': '佐藤太郎', 'number': '090-1234-5678', 'address': '横浜'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold＝建物を建てる時の土台のようなもの
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.phone),
            title: Text(contacts[index]['name']!),
            subtitle: Text(contacts[index]['number']!),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              //押した時の処理
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(contact: contacts[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.contact}) : super(key: key);
  final Map<String, String> contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${contact['name']}'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                Text('名前 : ${contact['name']}'),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.phone,
                  size: 40,
                ),
                Text('電話 : ${contact['number']}'),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.home,
                  size: 40,
                ),
                Text('住所 : ${contact['address']}'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, size: 30),
                      Text('電話をかける'),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
