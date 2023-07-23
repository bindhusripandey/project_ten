import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> title=["30% Off","20% Off","10% Off"];
  List<String> second=["Best Deal On","New Generation","Models"];
  List<String> third=["Camera","Smart TV","Headphones"];
  List<Color> colors=[Color(0xFFefecd9),Color(0xFFeaddd7),Color(0xFFeaddd7)];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 150,width: 450,
              decoration: BoxDecoration(
                color: Color(0xFF113160),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Search Product.....",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),),
                              Container(
                                height: 25,width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                color: Color(0xFF113160),
                               ),
                          child: Icon(Icons.search_sharp,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                      ),
                    Icon(Icons.menu,
                    size: 30,
                    color: Colors.white,)
                  ],
                ),
              ),
            ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 140,width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFf6cc35),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Big Sale Offer",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent,
                        ),),
                        Text("Get The Best Deals",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),),
                        Text("On Headphones",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),),
                        SizedBox(height: 6,),
                        Container(
                          alignment: Alignment.center,
                          height: 30,width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF0e3266)
                          ),
                              child: Text("Shop Now",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
                          ),
                        SizedBox(height: 4,),
                ]
                                         ),
                    Image.asset("images/assets/headphones2.png"),
                                    ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feature Deal",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54
                ),),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.black54,)
              ],

      ),
          ),
          SizedBox(height: 10),
                     Container(
                       height: 130,
                       child: ListView.separated(
                         scrollDirection: Axis.horizontal,
             itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
        height: 130,width: 322,
        decoration: BoxDecoration(
          color: colors[index],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                        ),),
                    Text(
                      second[index],
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),),
                    Text(
                      third[index],
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),),
                    SizedBox(height: 6,),
                    Text("View Products",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF1e2839)
                        ),)
                  ],
              ),
            ),
            Image.asset("images/assets/camera.png",)
          ],
        ),
      ),
    );
    },
              separatorBuilder: (BuildContext context,int index) {
              return Container(
              height: 3
              );
    }
              ),
                     ),
          SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Seller",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),),
                Icon(Icons.arrow_forward_ios,
                color: Colors.black54,),
              ],
            ),
          ),
          SizedBox(height: 18,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 150,width: 190,
                  decoration: BoxDecoration(
                    color: Color(0xFFf4f4f4),
                  ),
                  child: Image.asset("images/assets/actioncam.png"),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  height: 150,width: 190,
                  decoration: BoxDecoration(
                    color: Color(0xFFf4f4f4),
                  ),
                  child: Image.asset("images/assets/gaming.png",width: 130,),
                ),
    ]
              ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("ActionCamera",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),),
                    SizedBox(width: 100,),
                    Text("GamingController",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),)
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.black54,),
                    Icon(Icons.star,color: Colors.black54,),
                    Text("13500",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                    ),
                       SizedBox(width: 30,),
                       Icon(Icons.star,color: Colors.orange,),
                        Icon(Icons.star,color: Colors.orange,),
                        Icon(Icons.star,color: Colors.orange,),
                        Icon(Icons.star,color: Colors.black54,),
                         Icon(Icons.star,color: Colors.black54,),
                         Text("2250",style: TextStyle(
                         fontSize: 20,
                          color: Colors.black54,
                         ),
                         ),
        ],

                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Icon(Icons.monetization_on_sharp,
                    color: Color(0xFF113160),),
                    Text("23",style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF113160)
                    ),),
                    SizedBox(width: 160,),
                    Icon(Icons.monetization_on_sharp,
                    color: Color(0xFF113160),),
                    Text("100",style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF113160)
                    ),),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 90,width: 450,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.home),
                      Icon(Icons.window),
                      Icon(Icons.shopping_cart),
                      Icon(Icons.account_circle),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Home",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1e2839)
                      ),),
                      Text("Category",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54
                      ),),
                      Text("Cart",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),),
                      Text("Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54
                      ),)
                    ],
                  )
                ],
              ),
            ),

          )
                  ]
    )
    );
  }
}
