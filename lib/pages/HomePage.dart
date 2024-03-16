// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_mobile_app/util/category_card.dart';
import 'package:medical_mobile_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "IDIR Belmokhtar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),

                  // Profil icon
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 22),

            // Card -> how do you feel?
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple[200],
                  ),
                  // padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      // Animation or cute picture
                      Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                // color: Colors.pink,
                              ),
                              height: 120,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset("lib/icons/drugs.png")),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                      ),

                      SizedBox(width: 12),
                      // How do you feel + text
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "How do you feel?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Fill out your medical card right now",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(12),
                                // color: Colors.purple[300],
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple[300],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 22),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "how Can we help you?",
                  ),
                ),
              ),
            ),

            SizedBox(height: 22),

            // Horizontal listView -> categories: dentist, surgeon ect...
            Container(
              height: 72,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: "lib/icons/tooth.png",
                    categoryName: "Dentist",
                  ),
                  CategoryCard(
                    iconImagePath: "lib/icons/surgeon.png",
                    categoryName: "Surgeon",
                  ),
                  CategoryCard(
                    iconImagePath: "lib/icons/drugs.png",
                    categoryName: "Medicine",
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            // Doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor List",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(),
                DoctorCard(),
                DoctorCard(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
