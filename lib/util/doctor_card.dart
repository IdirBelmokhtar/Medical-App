import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: Image.asset(
                "lib/images/img3.jpg",
                height: 86,
              ),
            ),

            SizedBox(height: 8),

            // Rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "4.9",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),

            SizedBox(height: 8),

            // Doctor name
            Text(
              "Dr. Belmokhtar Idir",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            // Doctor title
            Text("Therapist, 7 y.e."),
          ],
        ),
      ),
    );
  }
}
