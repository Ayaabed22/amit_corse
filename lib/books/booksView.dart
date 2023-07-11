import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class BooksView extends StatefulWidget{
  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  List <BookModel> booksList = [
    BookModel(
        imageUrl: "https://www.books-lib.net/uploads/images/1594641406.jpeg",
        title: "نجاحك في صباحك", isFav: true),
    BookModel(
        imageUrl: "https://www.books-lib.net/uploads/images/1640425989.jpg",
        title: "جلسات نفسيه", isFav: false),
    BookModel(
        imageUrl: "https://www.books-lib.net/uploads/images/1640425989.jpg",
        title: "جلسات نفسيه", isFav: false),
    BookModel(
        imageUrl: "https://www.books-lib.net/uploads/images/1594641406.jpeg",
        title: "نجاحك في صباحك", isFav: true)
  ];

  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              isGrid = !isGrid;
              setState(() {

              });
            }, icon: Icon(isGrid ? Icons.grid_4x4 : Icons.more_horiz_outlined)),
          ],
          title: Text("My Books"),
        ),
      body: SingleChildScrollView (
scrollDirection: Axis.horizontal
,child:Row(
children: List.generate(100, (index) => Container( height:  100,width:100,color: Color(0xffad21aa*(index+1)),))
)
),

    );
  }
}

// }SingleChildScrollView (
// scrollDirection: Axis.horizontal
// ,child:Row(
// children: List.generate(100, (index) => Container( height:  100,width:100,color: Color(0xffad21aa*(index+1)),))
// )
// )
// body: GridView.builder(
//        scrollDirection:Axis.horizontal,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: isGrid?3:1,
//       childAspectRatio: 150/300),
//      itemBuilder: (context,index) => Container(
//        margin: EdgeInsets.only(right: 10,left: 10,top: 10),
//       // color: Colors.green,
//        child:Column(
//          children:[Expanded
//        (child:Image.network(booksList[index].imageUrl,width: double.infinity,fit: BoxFit.fill,)),
//          Row(
//            mainAxisSize: MainAxisSize.min,
//            children:[Expanded(child:FittedBox(child:Text(booksList[index].title,style: TextStyle(color: Colors.redAccent),),),),
//              IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: booksList[index].isFav?Colors.red:Colors.black)],
//          ),
//           ]
//      ),
//      ),
//        itemCount: booksList.length,
//    ),