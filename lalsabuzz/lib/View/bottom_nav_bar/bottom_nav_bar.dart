// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:stylish_bottom_bar/model/bar_items.dart';
// import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Stylish Bottom Navigation Bar Example',
//       theme: ThemeData(
//         // useMaterial3: true,
//         primarySwatch: Colors.green,
//       ),
//       // home: const BubbelBarExample(),
//       home: const AnimatedBarExample(),
//     );
//   }
// }

// class AnimatedBarExample extends StatefulWidget {
//   const AnimatedBarExample({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
// }

// class _AnimatedBarExampleState extends State<AnimatedBarExample> {
//   dynamic selected;
//   var heart = false;
//   PageController controller = PageController();

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true, //to make floating action button notch transparent

//       //to avoid the floating action button overlapping behavior,
//       // when a soft keyboard is displayed
//       // resizeToAvoidBottomInset: false,

//       bottomNavigationBar: StylishBottomBar(
//         option: AnimatedBarOptions(
//           // iconSize: 32,
//           barAnimation: BarAnimation.fade,
//           iconStyle: IconStyle.animated,
//           // opacity: 0.3,
//         ),
//         items: [
//           BottomBarItem(
//             icon: Image.asset(
//   'assets/Navbar Icon/Offers.png',
//   width: 44,
//   height: 44,
//   fit: BoxFit.cover,
// ),
//             selectedIcon: const Icon(Icons.house_rounded),
//             // selectedColor: Colors.teal,
//             backgroundColor: Color(0xffC0BFBF),
//             title: const Text('Offers'),
//             // badge: const Text('9+'),
//             // showBadge: true,
//           ),
//           BottomBarItem(
//             icon:Image.asset(
//   'assets/Navbar Icon/Category.png',
//   width: 44,
//   height: 44,
//   fit: BoxFit.cover,
// ),
//             selectedIcon: const Icon(Icons.star_rounded),
//             selectedColor: Color(0xffC0BFBF),
//             // unSelectedColor: Colors.purple,
//             // backgroundColor: Colors.orange,
//             title: const Text('Category'),
//           ),
//           BottomBarItem(
//               icon: Image.asset(
//   'assets/Navbar Icon/News_feed.png',
//   width: 44,
//   height: 44,
//   fit: BoxFit.cover,
// ),
//               selectedIcon: const Icon(
//                 Icons.style,
//               ),
//               backgroundColor: Color(0xffC0BFBF),
//               selectedColor: Colors.deepOrangeAccent,
//               title: const Text('Newsfeed')),
//           BottomBarItem(
//               icon:Image.asset(
//   'assets/Navbar Icon/Account.png',
//   width: 44,
//   height: 44,
//   fit: BoxFit.cover,
// ),
//               selectedIcon: const Icon(
//                 Icons.person,
//               ),
//               backgroundColor: Color(0xffC0BFBF),
//               selectedColor: Colors.deepPurple,
//               title: const Text('Account')),
//         ],
//         hasNotch: true,
//         fabLocation: StylishBarFabLocation.center,
//         currentIndex: selected ?? 0,
//         onTap: (index) {
//           controller.jumpToPage(index);
//           setState(() {
//             selected = index;
//           });
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             heart = !heart;
//           });
//         },
//         backgroundColor: Colors.white,
//         child: Icon(
//           heart ? CupertinoIcons.home: CupertinoIcons.home,
//           color: Colors.red,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: SafeArea(
//         child: PageView(
//           controller: controller,
//           children: const [
//             Center(child: Text('Home')),
//             Center(child: Text('Star')),
//             Center(child: Text('Style')),
//             Center(child: Text('Profile')),
//           ],
//         ),
//       ),
//     );
//   }
// }

////____trial2_______///
// import 'package:flutter/material.dart';



// class NavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Example'),
//         ),
//         body: Center(
//           child: Text('Content goes here'),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.red, // Set the background color to red
//           onPressed: () {
//             // Handle the click on the Home button
//           },
//           child: Icon(Icons.home),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           shape: CircularNotchedRectangle(),
//           notchMargin: 8.0, // Adjust the margin of the notch
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.local_offer),
//                 onPressed: () {
//                   // Handle Offers button tap
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.category),
//                 onPressed: () {
//                   // Handle Category button tap
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.rss_feed),
//                 onPressed: () {
//                   // Handle Newsfeed button tap
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.account_circle),
//                 onPressed: () {
//                   // Handle Account button tap
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

///_____trial 2 End___////

// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget {
//   @override
//   _NavBarState createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     Center(child: Text('Offers')),
//     Center(child: Text('Category')),
//     Center(child: Text('Newsfeed')),
//     Center(child: Text('Account')),
//   ];

//   final List<String> _titles = [
//     'Offers',
//     'Category',
//     'Newsfeed',
//     'Account',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Example'),
//         ),
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             _buildBottomNavItem('assets/Navbar Icon/Offers.png', 'Offers', 0),
//             _buildBottomNavItem('assets/Navbar Icon/Category.png', 'Category', 1),
//             // Add an empty item for spacing
//             BottomNavigationBarItem(
//               icon: SizedBox(), // Empty SizedBox to create space
//               label: '', // Empty label
//             ),
//             _buildBottomNavItem('assets/Navbar Icon/News_feed.png', 'Newsfeed', 2),
//             _buildBottomNavItem('assets/Navbar Icon/Account.png', 'Account', 3),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.blue, // Color when selected
//           onTap: _onItemTapped,
//         ),
//         floatingActionButton: _buildFloatingActionButton(),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildBottomNavItem(String iconPath, String title, int index) {
//     return BottomNavigationBarItem(
//       icon: Image.asset(
//         iconPath,
//         width: 30,
//         height: 30,
//         color: _selectedIndex == index ? Colors.blue : Colors.grey, // Icon color
//       ),
//       label: title,
//     );
//   }

//   FloatingActionButton _buildFloatingActionButton() {
//     return FloatingActionButton(
//       onPressed: () {
//         // Handle the click on the Home button
//       },
//       backgroundColor: Colors.red, // Set the background color to red
//       child: Icon(Icons.home),
//     );
//   }

// void _onItemTapped(int index) {
//   if (index >= 0 && index < _pages.length) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }

// }
// import 'package:flutter/material.dart';

// import '../../Const/custom_widget.dart';

// class NavBar extends StatefulWidget {
//   @override
//   _NavBarState createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const Center(child: Text('Offers')),
//     const Center(child: Text('Category')),
//     const Center(child: Text('Newsfeed')),
//     const Center(child: Text('Account')),
//   ];

//   final List<String> _titles = [
//     'Offers',
//     'Category',
//     'Newsfeed',
//     'Account',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           // leading: Padding(
//           //   padding: const EdgeInsets.only(left: 24),
//           //   child: Image.asset(
//           //     'assets/images/logo.png',
//           //   ),
//           // ),
//           //leadingWidth: 140,
          
//           title: Align(
//               alignment: Alignment.centerRight,
//               child: Container(
//                 height: 30,
//                 width: 260,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     ),
//                       suffixIcon: const Icon(
//                         Icons.search,
//                         size: 13,
//                       ),
//                       hintText: "Search Products",
//                       hintStyle:
//                           fontStyle(10, const Color(0xffC0BFBF), FontWeight.w400),
//                       contentPadding:
//                           const EdgeInsets.symmetric(vertical: 2, horizontal: 15)),
//                 ),
//               )),
//           actions: [
//             IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
//              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
//           ],
//         ),
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed, // Display labels under icons always
//           items: <BottomNavigationBarItem>[
//             _buildBottomNavItem('assets/Navbar Icon/Offers.png', 'Offers', 0),
//             _buildBottomNavItem('assets/Navbar Icon/Category.png', 'Category', 1),
//       //  _buildEmptyNavItem(),
           
//             //  BottomNavigationBarItem(

//             //    icon: Spacer(
            
//             //    ), // Empty SizedBox to create space
//             //    label: '', // Empty label
      
//             _buildBottomNavItem('assets/Navbar Icon/News_feed.png', 'Newsfeed', 2),
//             _buildBottomNavItem('assets/Navbar Icon/Account.png', 'Account', 3),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: primaryColor, // Color when selected
//           onTap: _onItemTapped,
//         ),
        
//         floatingActionButton: _buildFloatingActionButton(),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildBottomNavItem(String iconPath, String title, int index) {
//     return BottomNavigationBarItem(
//       icon: Image.asset(
//         iconPath,
//         width: 20,
//         height: 30,
//         color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey, // Icon color
//       ),
//       label: title, // Display the title under the icon
//     );
//   }
//  BottomNavigationBarItem _buildEmptyNavItem() {
//     return BottomNavigationBarItem(
//       icon: Container(
//         width: 0,
//         height: 0,
//       ),
//       label: '',
//     );
//   }
//   FloatingActionButton _buildFloatingActionButton() {
//     return FloatingActionButton(
//       onPressed: () {
//         // Handle the click on the Home button
//       },
//       backgroundColor: primaryColor, // Set the background color to red
//       child: const Icon(Icons.home),
//     );
//   }

//   void _onItemTapped(int index) {
//     if (index >= 0 && index < _pages.length) {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }
// }
// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget {
//   @override
//   _NavBarState createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const Center(child: Text('Offers')),
//     const Center(child: Text('Category')),
//     const Center(child: Text('Newsfeed')),
//     const Center(child: Text('Account')),
//   ];

//   final List<String> _titles = [
//     'Offers',
//     'Category',
//     'Newsfeed',
//     'Account',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               height: 30,
//               width: 260,
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                   ),
//                   suffixIcon: const Icon(
//                     Icons.search,
//                     size: 13,
//                   ),
//                   hintText: "Search Products",
//                   hintStyle: TextStyle(
//                     fontSize: 10,
//                     color: const Color(0xffC0BFBF),
//                     fontWeight: FontWeight.w400,
//                   ),
//                   contentPadding:
//                       const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
//                 ),
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
//             IconButton(
//                 onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
//           ],
//         ),
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: <BottomNavigationBarItem>[
//             _buildBottomNavItem('assets/Navbar Icon/Offers.png', 'Offers', 0),
//             _buildBottomNavItem('assets/Navbar Icon/Category.png', 'Category', 1),
//             // Add empty Container for spacing
        
//             _buildBottomNavItem('assets/Navbar Icon/News_feed.png', 'Newsfeed', 2),
//             _buildBottomNavItem('assets/Navbar Icon/Account.png', 'Account', 3),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.blue, // Set color when selected
//           onTap: _onItemTapped,
//         ),
//         floatingActionButton: _buildFloatingActionButton(),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildBottomNavItem(String iconPath, String title, int index) {
//     return BottomNavigationBarItem(
//       icon: Image.asset(
//         iconPath,
//         width: 20,
//         height: 30,
//         color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey, // Icon color
//       ),
//       label: title, // Display the title under the icon
//     );
//   }

//   BottomNavigationBarItem _buildEmptyNavItem() {
//     return BottomNavigationBarItem(
//       icon: SizedBox(
//         width: 10      , // Adjust the width for spacing
//         height: 0, // Set height to 0
//       ),
//       label: '',
//     );
//   }

//   FloatingActionButton _buildFloatingActionButton() {
//     return FloatingActionButton(
//       onPressed: () {
//         // Handle the click on the Home button
//       },
//       backgroundColor: Colors.red, // Set the background color to red
//       child: const Icon(Icons.home),
//     );
//   }

//   void _onItemTapped(int index) {
//     if (index >= 0 && index < _pages.length) {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }
// }
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Offers')),
    const Center(child: Text('Category')),
    const Center(child: Text('Newsfeed')),
    const Center(child: Text('Account')),
  ];

  final List<String> _titles = [
    'Offers',
    'Category',
    'Newsfeed',
    'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 30,
              width: 260,
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 13,
                  ),
                  hintText: "Search Products",
                  hintStyle: TextStyle(
                    fontSize: 10,
                    color: const Color(0xffC0BFBF),
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            _buildBottomNavItem('assets/Navbar Icon/Offers.png', 'Offers', 0),
            _buildBottomNavItem('assets/Navbar Icon/Category.png', 'Category', 1),
            // Add empty Container for spacing

            _buildBottomNavItemWithSpacing('assets/Navbar Icon/News_feed.png', 'Newsfeed', 2),
            _buildBottomNavItem('assets/Navbar Icon/Account.png', 'Account', 3),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue, // Set color when selected
          onTap: _onItemTapped,
        ),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(String iconPath, String title, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Image.asset(
            iconPath,
            width: 20,
            height: 30,
            color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey, // Icon color
          ),
          Text(
            title,
            style: TextStyle(
              color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey,
              // Label color
            ),
          ),
        ],
      ),
      label: '', // Empty label
    );
  }

  BottomNavigationBarItem _buildBottomNavItemWithSpacing(String iconPath, String title, int index) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(top: 1.0, ), // Add top padding for spacing
        child: Column(
          children: [
            Image.asset(
              iconPath,
              width: 20,
              height: 30,
              color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey, // Icon color
            ),
            Text(
              title,
              style: TextStyle(
                color: _selectedIndex == index ? Color(0xffED4D2D) : Colors.grey,
                // Label color
              ),
            ),
          ],
        ),
      ),
      label: '', // Empty label
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Handle the click on the Home button
      },
      backgroundColor: Colors.red, // Set the background color to red
      child: const Icon(Icons.home),
    );
  }

  void _onItemTapped(int index) {
    if (index >= 0 && index < _pages.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }
}
