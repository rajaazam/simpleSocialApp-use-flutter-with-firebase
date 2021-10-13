import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseapp/edit.dart';
import 'package:firebaseapp/post.dart';
import 'package:flutter/material.dart';
class Post1 extends StatelessWidget {
  final Map data;
  Post1({required this.data});


  @override
  Widget build(BuildContext context) {
  void deletePost()async{
    try{
           FirebaseFirestore db = FirebaseFirestore.instance;
          await  db.collection("posts").doc(data["id"]).delete();

    }catch(e){
      print(e);
    }
       }
     void editPost(){
      showDialog(context: context, builder: (BuildContext  context){
        return editPage(data: data,);

      });

  }
    
     return 
     
    // Scaffold(
    //    body: SafeArea(child:
    //     ListView(

    //      children: [
    //        Row(
    //          children: [
    //            Container(
    //              height: 300,
    //              width: 300,
    //               margin: EdgeInsets.only(top: 10),
    //            decoration: BoxDecoration(

    //              color: Colors.pinkAccent,
    //            ),
    //            child: Image.network(data["url"],
           
    //         width: 250,
    //         height: 250,
    //         fit: BoxFit.cover,
            
    //       ),
    //            ),
    //             SizedBox(width: 20,),
    //             Column(
    //               children: [
    //                  Text(data["title"]),
    //       Text(data["description"]),
    //       ElevatedButton(onPressed: deletePost, child: Text('Delete')),
    //       ElevatedButton(onPressed: editPost, child:Text('Edit'))
    //               ],
    //             )
    //          ],
    //        )
    //      ],
    //    )),
    //  );
    SingleChildScrollView(
      child: Container(
       
              margin: EdgeInsets.only(top: 5,),
              
        decoration: BoxDecoration(
        //  color: Colors.lightGreen,
          border: Border.all(color: Colors.black, width: 1),
          
        ),
          padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(data["title"],style: TextStyle(fontSize: 20,  fontWeight:FontWeight.bold),),
            Text(data["description"],style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: deletePost, child: Text('Delete')),
                SizedBox(width: 5,),
                Column(
                  children: [
                       ElevatedButton(onPressed: editPost, child:Text('Edit')),
                  ],
                )
              ],
            ),
            
            
            Image.network(data["url"],
             
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              
            ),
          
          
          ],
        ),
    
        
      ),
    );
  }
}