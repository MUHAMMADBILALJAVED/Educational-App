import 'package:education_app/widgets/description_section.dart';
import 'package:education_app/widgets/videos_section.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  String img;
  CoursesScreen(this.img);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  bool isVideossection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color.fromARGB(255, 145, 170, 238),
            ),
          ),
        ],
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF5F3FF),
                  image: DecorationImage(
                    image: AssetImage("images/${widget.img}.png"),
                  )),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Color.fromARGB(255, 145, 170, 238),
                    size: 45,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "${widget.img} Complete Course",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Created By Dear Programmer",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "55 videos",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // If isvideossection condition is true then that color will be on button and If isvideossection condition is false then that color will be shown on button but with some opacity.
                    color: isVideossection
                        ? const Color.fromARGB(255, 117, 153, 252)
                        : const Color.fromARGB(255, 145, 170, 238).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        // change value of isvideosection
                        setState(() {
                          isVideossection = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35),
                        child: const Text(
                          "Videos",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideossection
                        ? const Color.fromARGB(255, 145, 170, 238).withOpacity(0.6)
                        : const Color.fromARGB(255, 117, 153, 252),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideossection = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35),
                        child: const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // we will create 2 different sections for videos and description
            const SizedBox(height: 10),
            // If isvideosection condition is true then videosetion will be shown and if condition is false it's means descriptionsection will be shown
            isVideossection ? VideoSection() : const DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
