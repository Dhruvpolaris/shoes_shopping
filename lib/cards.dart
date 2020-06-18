import 'package:flutter/material.dart';
import 'package:shoe_shop/detail_page.dart';

class Cards extends StatefulWidget {
  final String tag;
  final String imageUrl;
  final bool isFavoutrite;
  final String cost;
  Cards(
    this.tag,
    this.imageUrl,
    this.isFavoutrite,
    this.cost,
  );

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                tag: widget.tag,
                imageUrl: widget.imageUrl,
                isFavoutrite: widget.isFavoutrite,
                cost: widget.cost,
              ),
            ),
          );
        },
        child: Container(
          height: 250.0,
          margin: EdgeInsets.only(bottom: 24.0),
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sneakers",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "NIKE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: widget.isFavoutrite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 25.0,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                            size: 25.0,
                          ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "\$ " + widget.cost,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
