import 'package:flutter/material.dart';
import 'package:project_flutter_ui/silver_appbar.dart';
import 'package:project_flutter_ui/tabbar.dart';
import 'package:project_flutter_ui/warp.dart';
import 'list_view_screen.dart';
import 'warp.dart';
import 'form_page.dart';
import 'bottom_navbar.dart';
import 'tabbar.dart';

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
        // the application has a purple toolbar. Then, without quitting the app,
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
      // home: MyListView(),
      // home: MyWrap(),
      // home: const FormPage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text('You have pushed the button this many times:'),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      //       body: Container(
      //   height: 300,
      //   width: double.infinity,
      //   margin: const EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //     color: Colors.grey,
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.2),
      //         blurRadius: 15.0,
      //         offset: Offset.zero,
      //       ),
      //     ],
      //   ),
      // ),
      //   body: Container(
      //   padding: const EdgeInsets.all(10),
      //   child: const Column(
      //     children: [
      //       Text(
      //         "Discover the most modern furniture",
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 22.0,
      //             fontWeight: FontWeight.w500,
      //             letterSpacing: 1),
      //       )
      //     ],
      //   ),
      // ),
      // BUTTON ---
      // body: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blue,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20.0),
      //       ),
      //       shadowColor: Colors.grey[20],
      //       elevation: 5.0,
      //     ),
      //     child: Text(
      //       "Add To Cart".toUpperCase(),
      //       style: const TextStyle(
      //           fontSize: 20.0,
      //           fontWeight: FontWeight.w500,
      //           color: Colors.white),
      //     ),
      //   ),
      // ),
      // ICON ---
      // body: Container(
      //   color: Colors.blue[200],
      //   padding: const EdgeInsets.all(20),
      //   child: const Row(
      //     children: [
      //       Icon(
      //         Icons.home,
      //         size: 32,
      //       ),
      //       Icon(
      //         Icons.favorite,
      //         color: Colors.red,
      //         size: 36,
      //       ),
      //     ],
      //   ),
      // ),
      // IMAGES ---
      // body: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Row(
      //     children: [
      //       SizedBox(
      //         width: 180,
      //         child: ClipRRect(
      //           borderRadius: const BorderRadius.only(
      //             topLeft: Radius.circular(20),
      //             topRight: Radius.circular(20),
      //           ),
      //           child: Image.asset('assets/images/supercars/2140673.jpg'),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // COLUMN ---
      //  body: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   child: const Column(
      //     children: [
      //       Text(
      //         "Stylish Chair",
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 14.0,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         "Rp. 350.000",
      //         style: TextStyle(
      //           fontSize: 20,
      //           color: Color(0xFF9A9390),
      //           fontWeight: FontWeight.w400,
      //           letterSpacing: 1,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // ROW ---
      // body: Container(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(12),
      //           color: Colors.grey,
      //         ),
      //         child: IconButton(
      //           icon: const Icon(Icons.arrow_back),
      //           onPressed: () {},
      //         ),
      //       ),
      //       const Text(
      //         "Detail",
      //         style: TextStyle(
      //           fontSize: 24,
      //           fontWeight: FontWeight.normal,
      //         ),
      //       ),
      //       IconButton(
      //         icon: const Icon(
      //           Icons.share,
      //           size: 32,
      //         ),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
      // NAVIGATOR PUSH
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => const FormPage()));
      //         },
      //         child: const Text('Next Page'),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blue[100],
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                accountName: const Text(
                  'Gilang Kafi',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "gilangkf@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: const CircleAvatar(
                  child: FlutterLogo(size: 50),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBar()),
                );
              },
              child: const Text('Go to Bottom Navigation Bar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );
              },
              child: const Text('Go to Form Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyTabBar()),
                );
              },
              child: const Text('Go to Tab Bar'),
            ),
                        const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SilverAppBarPage()),
                );
              },
              child: const Text('Go to Silver App Bar'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
  // CIRCLE AVATAR ---
  // Widget build(BuildContext context) {
  //   List<Color> colors = [
  //     Colors.red,
  //     Colors.green,
  //     Colors.blue,
  //   ];
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Coding Flutter - CircleAvatar"),
  //     ),
  //     body: Container(
  //       padding: const EdgeInsets.all(10.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           const CircleAvatar(
  //             radius: 50,
  //             backgroundImage: NetworkImage('https://picsum.photos/200'),
  //           ),
  //           Row(
  //             children: [
  //               ...List.generate(
  //                 colors.length,
  //                 (index) => Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: CircleAvatar(
  //                     radius: 20,
  //                     backgroundColor: colors[index],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

