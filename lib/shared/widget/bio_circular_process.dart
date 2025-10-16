import 'package:flutter/material.dart';

class BioCircularProcess extends StatefulWidget {
  final String labal;
  final int? reading;

  const BioCircularProcess({
    super.key,
    required this.labal,
    required this.reading,
  });

  @override
  State<BioCircularProcess> createState() => _BioCircularProcessState();
}

class _BioCircularProcessState extends State<BioCircularProcess> {
  @override
  Widget build(BuildContext context) {
    var value = (widget.reading)! / 100;
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                value: value,
                strokeWidth: 7,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                valueColor: AlwaysStoppedAnimation<Color>(
                  const Color.fromARGB(255, 255, 247, 1),
                ),
              ),
            ),

            Text(
              "${widget.reading}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),

        Text(widget.labal, style: TextStyle(fontSize: 20, color: Colors.white)),
      ],
    );
  }
}
