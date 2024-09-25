import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 216, 97, 0),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/pic.jpg'),
                      radius: 50,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Dave M. Benedicto',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(84, 254, 143, 83),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow('Birthdate', 'March 11, 2004'),
                      _buildInfoRow('Address', 'Oton, Iloilo, Philippines'),
                      _buildInfoRow('Email', 'dave.benedicto@wsu.edu.ph'),
                      _buildInfoRow('Phone Number', '09707883235'),
                      _buildInfoRow(
                          'Education', 'West Visayas State University'),
                      _buildInfoRow('Course',
                          'Bachelor of Science in Information Technology'),
                      _buildInfoRow('Hobbies',
                          'Watching Movies, Anime, and Kdrama, Gaming'),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Biography',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "I'm Dave M. Benedicto, a 20-year-old from Zone 1 Sitio Cayap, Brgy. Rizal, Oton, Iloilo. Right now, I'm in my third year studying IT at West Visayas State University. When I'm not busy with school, I love to relax by watching movies, anime, and Korean dramas. I also really enjoy playing video games. These hobbies help me unwind and have fun between my classes and schoolwork.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Icon(
            getIcons(title),
            color: Colors.blue,
            size: 24,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconData getIcons(String title) {
    switch (title) {
      case 'Birthdate':
        return Icons.calendar_today;
      case 'Address':
        return Icons.home;
      case 'Email':
        return Icons.email;
      case 'Phone Number':
        return Icons.phone;
      case 'Education':
        return Icons.school;
      case 'Course':
        return Icons.book;
      case 'Hobbies':
        return Icons.favorite;
      default:
        return Icons.error;
    }
  }
}
