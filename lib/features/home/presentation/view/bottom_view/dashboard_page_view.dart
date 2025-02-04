// import 'package:flutter/material.dart';

// class DashboardPageView extends StatelessWidget {
//   const DashboardPageView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Wise Academy',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true, // Centers the title in the AppBar
//           backgroundColor: Colors.blue, // You can change the color
//         ),
//         body: Center(
//           child: Text(
//             'Welcome to Wise Academy',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPageView extends StatelessWidget {
  const DashboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi, Aashish'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for..',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Carousel Slider
            // CarouselSlider(
            //   options: CarouselOptions(height: 150.0, autoPlay: true),
            //   items: ['Offer 1', 'Offer 2', 'Offer 3'].map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //           width: MediaQuery.of(context).size.width,
            //           margin: const EdgeInsets.symmetric(horizontal: 5.0),
            //           decoration: BoxDecoration(
            //             color: Colors.blue,
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           child: Center(
            //             child: Text(
            //               i,
            //               style: const TextStyle(
            //                   fontSize: 18.0, color: Colors.white),
            //             ),
            //           ),
            //         );
            //       },
            //     );
            //   }).toList(),
            // ),
            // const SizedBox(height: 20),
            // Categories
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     Text('Categories',
            //         style:
            //             TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            //     Text('SEE ALL', style: TextStyle(color: Colors.blue)),
            //   ],
            // ),
            // const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: const [
            //     Text('3D Design'),
            //     Text('Arts & Humanities', style: TextStyle(color: Colors.blue)),
            //     Text('Graphic Design'),
            //   ],
            // ),
            // const SizedBox(height: 20),
            // // Popular Courses
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     Text('Popular Courses',
            //         style:
            //             TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            //     Text('SEE ALL', style: TextStyle(color: Colors.blue)),
            //   ],
            // ),
            // const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     FilterChip(
            //         label: const Text('All'), onSelected: (bool value) {}),
            //     FilterChip(
            //         label: const Text('Graphic Design'),
            //         onSelected: (bool value) {}),
            //     FilterChip(
            //         label: const Text('3D Design'),
            //         onSelected: (bool value) {}),
            //   ],
            // ),
            const SizedBox(height: 20),
            // Course Card
            // Card(
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   elevation: 4,
            //   child: ListTile(
            //     contentPadding: const EdgeInsets.all(10),
            //     title: const Text('Graphic Design Advanced',
            //         style: TextStyle(fontWeight: FontWeight.bold)),
            //     subtitle: const Text('Rs 200 | ⭐ 4.2 | 7830 Std'),
            //     leading: Container(
            //       width: 80,
            //       height: 80,
            //       color: Colors.black,
            //     ),
            //     trailing: IconButton(
            //       icon: const Icon(Icons.bookmark_border),
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
