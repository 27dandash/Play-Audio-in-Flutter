
import 'package:flutter/material.dart';

import 'PlayingScreen.dart';
import 'constants.dart';

// ignore: must_be_immutable
class MyBox extends StatelessWidget {

      var index=0;
  MyBox(this.index, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          r=index;
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayingScreen()));
        },
        highlightColor: Colors.yellowAccent,
        hoverColor: Colors.pinkAccent,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            // image: DecorationImage(image: AssetImage(i[index])),
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [Expanded(flex: 6,child: Hero(child: Image.asset(i[index]),tag: t[index],),),
              Expanded(flex: 1,child: FittedBox(child: Text(t[index])),)],
          ),

        ),
      ),
    );
  }
}
