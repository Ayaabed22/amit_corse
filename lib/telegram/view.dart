import 'package:flutter/material.dart';

import 'model.dart';

class TelegramScreen extends StatelessWidget {
  const TelegramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <Conversation> list=[
    Conversation(imgeUrl: "https://i.pinimg.com/736x/5a/17/62/5a17629b683bbb5f6662c79c4448ac6e.jpg",
    name: "Eman ",
    lastMAssage: "Are you Okay?!",
    time: 'mon'),
      Conversation(imgeUrl: "https://i.pinimg.com/736x/5a/17/62/5a17629b683bbb5f6662c79c4448ac6e.jpg",
          name: "Ahmed",
          lastMAssage: "Are you fine?!",
          time: 'the'),
      Conversation(imgeUrl: "https://i.pinimg.com/736x/5a/17/62/5a17629b683bbb5f6662c79c4448ac6e.jpg",
          name: "Aya",
          lastMAssage: "whatttttttttttt?!",
          time: 'sun'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit)),
      body: ListView.separated(
    itemCount: list.length,
    separatorBuilder: (BuildContext context, int index) => Container(
    margin: EdgeInsets.all(15),
    color: index.isEven ? Colors.green : Colors.redAccent,
    height: 1,
    ),
        itemBuilder: (context, build) => ListTile(
    title: Text(list[build].name),
    subtitle: Text(list[build].lastMAssage),
    leading: CircleAvatar(
    //onBackgroundImageError: (exception,stackTrace) => Center(child: Text('Error',style:TextStyle(color: Colors.green),),
    backgroundImage: NetworkImage(list[build].imgeUrl),
    backgroundColor: Colors.blue,
    radius: 20,
    ),

      ),
      )
    );
  }
}

// class Chat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           SizedBox(
//             width: 10,
//           ),
//           CircleAvatar(
//               backgroundImage:
//                   NetworkImage("https://picsum.photos/id/1074/400/400")),
//           SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(list[index].name,
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//                 SizedBox(
//                   height: 2,
//                 ),
//                 Text("Hello"),
//               ],
//             ),
//           ),
//           Icon(Icons.check),
//           SizedBox(
//             width: 10,
//           ),
//           Text("10 : 50"),
//         ],
//       ),
//     );
//   }
// }
