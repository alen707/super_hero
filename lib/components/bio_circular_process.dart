import 'package:flutter/material.dart';

class BioCircularProcess extends StatefulWidget {
  final String labal;


  const BioCircularProcess({
    super.key,
    required this.labal,
  });

  @override
  State<BioCircularProcess> createState() => _BioCircularProcessState();
}

class _BioCircularProcessState extends State<BioCircularProcess> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                value: 0.8,
                strokeWidth: 7,
                backgroundColor: const Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
                valueColor: AlwaysStoppedAnimation<Color>(
                  const Color.fromARGB(255, 255, 247, 1),
                ),
              ),
            ),
        
            Text(
              "30",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
        
        Text(
          widget.labal,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
