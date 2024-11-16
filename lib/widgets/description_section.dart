import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                "Course Lenght: ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.timer, color: Color.fromARGB(255, 117, 153, 252),),
              SizedBox(width: 5),
              Text(
                "26 Hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                "Rating:",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.star, color: Colors.amber,),
              SizedBox(width: 5),
              Text(
                "4.7",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ), 
    );
  }
}