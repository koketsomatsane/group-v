/* 
Student Number:  222004623, 224051673, 223019042, 220044858, 223002326, 221032720     
Student Names:  Seatlholo KG, Matsane K, Molefe SB, Nyelimane T, Lesenyeho LJ, NF Zwane
 */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../app_theme.dart';
import '../home/home_view.dart';
import 'profile_view.dart';

class StudentShellView extends StatefulWidget {
  const StudentShellView({super.key});

  @override
  State<StudentShellView> createState() => _StudentShellViewState();
}

class _StudentShellViewState extends State<StudentShellView> {
  int _index = 0;

  final _titles = ['Home', 'Notifications', 'Profile'];
  final _pages = const [
    HomeView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(_titles[_index])),
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) => setState(() => _index = value),
        selectedItemColor: AppTheme.primary,
        unselectedItemColor: AppTheme.textSecondary,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
