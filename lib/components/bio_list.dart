import 'package:flutter/material.dart';

class BioItem extends StatelessWidget {
  const BioItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top:8,
      ),
      child: Container(
        width: double.infinity,
        
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(5)
      
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            bottom: 5
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Row(
                children: [
          
                  Icon(
                    Icons.star
                  ),
                  SizedBox(width: 10,),
                  Text("Name",
                  style: TextStyle(
                    fontSize: 18
                  ),),
                ],
              ),
          
              Padding(
                padding: const EdgeInsets.only(
                  left: 30
                ),
                child: Text("nameeee",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
          
          
            ],
          ),
        )
      
      ),
    );
  }
}
