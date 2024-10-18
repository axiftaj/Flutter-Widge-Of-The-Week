

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  List<int> ratingList= [1, 2, 3,4,5] ;
  int tempSelectedRating = -1 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:  Center(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ratingList.length ,
                itemBuilder: (context, index){
                  return IconButton(
                      onPressed: (){

                        tempSelectedRating = index ;

                        if (kDebugMode) {
                          print(tempSelectedRating);
                        }
                        setState(() {});

                      },
                      icon: Icon( tempSelectedRating ==   -1 ? Icons.star_border_outlined  :  index <= tempSelectedRating    ?  Icons.star  : Icons.star_border_outlined )

                  );
                }),
          ),
        ),
      ),
    );
  }


}
