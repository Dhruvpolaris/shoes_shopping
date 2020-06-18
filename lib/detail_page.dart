import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  final String tag;
  final String imageUrl;
  final bool isFavoutrite;
  final String cost;
  
  DetailPage({this.tag,this.imageUrl,this.isFavoutrite,this.cost});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(tag: widget.tag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10,
                offset: Offset(0, 10),
              )
            ],
          ),
        ),)
      )
    );
  }
}