// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/views/appointment/appointment_screen.dart';
import 'package:doctor_appointment/views/category/category_screen.dart';
import 'package:doctor_appointment/views/home/home_screen.dart';
import 'package:doctor_appointment/views/login/login_screen.dart';
import 'package:doctor_appointment/views/settings/settings_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List screenList = [
    HomeScreen(),
    AppointmentScreen(),
    CategoryScreen(),
    LoginScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.blueColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.whiteColor.withOpacity(0.5),
        selectedLabelStyle: TextStyle(
          color: AppColors.whiteColor,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Doctor",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      body: screenList.elementAt(selectedIndex),
    );
  }
}
