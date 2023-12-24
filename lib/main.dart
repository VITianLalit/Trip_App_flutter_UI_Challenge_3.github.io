import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            makePage(1, 'assets/images/one.jpg', 'Visakhapatnam', 'Visakhapatnam is a port city and industrial center in the Indian state of Andhra Pradesh, on the Bay of Bengal. It\'s known for its many beaches, including Ramakrishna Beach, home to a preserved submarine at the Kursura Submarine Museum. Nearby are the elaborate Kali Temple and the Visakha Museum, an old Dutch bungalow housing local maritime and historical exhibits.'),
            makePage(2, 'assets/images/two.jpg','Chennai','Chennai, on the Bay of Bengal in eastern India, is the capital of the state of Tamil Nadu. The city is home to Fort St. George, built in 1644 and now a museum showcasing the city’s roots as a British military garrison and East India Company trading outpost, when it was called Madras. Religious sites include Kapaleeshwarar Temple, adorned with carved and painted gods, and St. Mary’s, a 17th-century Anglican church. '),
            makePage(3, 'assets/images/three.jpg','Mumbai','Mumbai (formerly called Bombay) is a densely populated city on India’s west coast. A financial center, it\'s India\'s largest city. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to the Hindu god Shiva. The city\'s also famous as the heart of the Bollywood film industry.'),
            makePage(4, 'assets/images/four.jpg','Kolkata','Kolkata (formerly Calcutta) is the capital of India\'s West Bengal state. Founded as an East India Company trading post, it was India\'s capital under the British Raj from 1773–1911. Today it’s known for its grand colonial architecture, art galleries and cultural festivals. It’s also home to Mother House, headquarters of the Missionaries of Charity, founded by Mother Teresa, whose tomb is on site.')
          ],
        ),
      ),
    );
  }
  Widget makePage(page, image, title, description) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.3,
              0.9
            ], colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/'+totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star, color: Colors.grey, size: 15,),
                          ),
                          Text('4.0', style: TextStyle(color: Colors.white70),),
                          Text('(2300)', style: TextStyle(color: Colors.white38, fontSize: 12),)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.9, fontSize: 15),),
                      ),
                      SizedBox(height: 20,),
                      Text('READ MORE', style: TextStyle(color: Colors.white),),
                      SizedBox(height: 30,),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}


