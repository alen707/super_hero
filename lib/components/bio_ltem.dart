import 'package:flutter/material.dart';

class BioItem extends StatefulWidget {
  final String? title;
  final String logo;
  final String? data;
  

  const BioItem({super.key, 
  this.title, 
  required this.logo, 
  this.data});

  @override
  State<BioItem> createState() => _BioItemState();
}

class _BioItemState extends State<BioItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [

                  ImageIcon(
                    AssetImage(widget.logo),
                    size: 20,
                    //color: Colors.yellow,
                  ),
                  SizedBox(width: 10),
                  Text(widget.title ?? "null", style: TextStyle(fontSize: 18)),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  widget.data??"null",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
