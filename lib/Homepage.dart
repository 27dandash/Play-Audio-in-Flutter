
import 'package:flutter/material.dart';

import 'my_box.dart';
import 'constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          leading: Icon(Icons.music_note_sharp),
          title: Text("مقتطفات من القران الكريم"),
        ),
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text("استمع",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount:  t.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
              
                      return
                        MyBox(index);
              
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


