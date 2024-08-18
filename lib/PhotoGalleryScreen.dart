import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> imageViewList=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT3X2FpuVzyBwtL1k5WoNMVEddQJF8hevmcVXDiSkZrU1z-RrwYesXJcPDQw-i5FVRtT4&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4DQ-tp12zlDGEUfulC2NNYwJ7vvskGXip6w&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxty9ssO16t2ML-HuSuSi2sw5q8c-Jitk04w&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiGui-nzkPn4KAUAp6tiuQ9UsPCbTtZJsXEg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCh2JpkwZSB1I7nNT5QERrkYy_SUynSDoaTg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUrvE85eW9nMQbakX11jPL2XybGmNTIlhnKw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCh2JpkwZSB1I7nNT5QERrkYy_SUynSDoaTg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT3X2FpuVzyBwtL1k5WoNMVEddQJF8hevmcVXDiSkZrU1z-RrwYesXJcPDQw-i5FVRtT4&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4DQ-tp12zlDGEUfulC2NNYwJ7vvskGXip6w&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxty9ssO16t2ML-HuSuSi2sw5q8c-Jitk04w&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiGui-nzkPn4KAUAp6tiuQ9UsPCbTtZJsXEg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCh2JpkwZSB1I7nNT5QERrkYy_SUynSDoaTg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUrvE85eW9nMQbakX11jPL2XybGmNTIlhnKw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCh2JpkwZSB1I7nNT5QERrkYy_SUynSDoaTg&s',


];

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('GridView with Images',
          style: TextStyle(
          color: Colors.white, // Set the text color here
        ),
        ),
        centerTitle: true,


        flexibleSpace:Container(
        child:Image.network(
            'https://media.istockphoto.com/id/1479694921/photo/blossoming-lilac-tree-branch-background.webp?b=1&s=612x612&w=0&k=20&c=begQKrG1OrUF3j6clWUohe_2U2U25QDYOWA13l0xgxk=', // Replace with your appbar image URL
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageViewList.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Specify the number of columns
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ), itemBuilder: ( context,  index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(imageViewList[index]),
                  fit: BoxFit.cover,)),
            );
        }),
        ),
      );
  }
}
