import 'package:education_app/pages/courses_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Creating Static data in list
  List catNames = [
    'Category',
    'Classes',
    'Free Courses',
    'Book Store',
    'Live Course',
    'Leader Board',
  ];
  
  List<Color> catColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7C7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
  ];

  List<Icon> catIcons = [
    const Icon(Icons.category, color: Colors.white, size: 30,),
    const Icon(Icons.video_library, color: Colors.white, size: 30,),
    const Icon(Icons.assignment, color: Colors.white, size: 30,),
    const Icon(Icons.store, color: Colors.white, size: 30,),
    const Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
    const Icon(Icons.emoji_events, color: Colors.white, size: 30,),
  ];

  List imgList = [
    'Flutter',
    'Python',
    'React js',
    'C++',
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BODY START FROM HERE
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
              decoration: const BoxDecoration(
              color: Color.fromARGB(255, 145, 170, 238),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 10, top: 5),
                  child: Text(
                    'Hi, Home Page',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        hintText: "Search here ....",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.grey,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: catIcons[index],),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        )
                      ],
                    );
                  },
                ),
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Courses", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                    Text("See All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 145, 170, 238)),),
                  ],
                ),
                const SizedBox(height: 10,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imgList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4*130), 
                    mainAxisSpacing: 10, 
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CoursesScreen(imgList[index]))
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFf5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset("assets/images/${imgList[index]}.png", width: 100, height: 100,),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.black.withOpacity(0.6)
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "55 Videos",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.5)
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
              ],
            ),
          )
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 99, 139, 250),
        iconSize: 25,
        selectedFontSize: 15,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
