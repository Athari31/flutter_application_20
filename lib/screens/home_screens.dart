import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_20/model/category.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});

 @override
 State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<category>categories=[
    category(
      image: "assets/bueaty.jpeg",
      name: "Bueaty"
    ),
    category(
      image: "assets/clothes.jpeg",
      name: "clothes"
    ),
    category(
      image: "assets/sport.jpeg",
      name: "sport"
    ),
    category(
      image: "assets/yoga.jpeg",
      name: "Yoga"
    ),
    category(
      image: "assets/watch.jpeg",
      name: "watch"
    ),
    category(
      image: "assets/makeup.jpeg",
      name: "Makeup"
    ),
    // category(
    //   image: "assets/sport.jpeg",
    //   name: "sport"
    // ),
    // category(
    //   image: "assets/yoga.jpeg",
    //   name: "Yoga"
    // ),

  ];
  
  
 @override
Widget build(BuildContext context) {
return SafeArea(
  child: Scaffold(
    body: GridView.builder(
     itemCount: categories.length,
     gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        
      ), 
    itemBuilder: (context,index){
      return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(categories[index].image!),fit: BoxFit.cover)),
        
        // width: 100,
        // height: 100,
        child: Center(child: Text(categories[index].name!)),
      );
      ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Card();
      },
      );
        
      
    }
    ),
















    appBar: AppBar(
      backgroundColor: Colors.pink.shade100,
          actions: [
        Icon(Icons.search ),
        ],
        leading: Icon(Icons.arrow_back_ios_sharp),
    
      
      ),
  ));






  

}
}


