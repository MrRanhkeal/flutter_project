import 'package:flutter/material.dart';

class SlideView extends StatefulWidget {
  const SlideView({super.key});

  @override
  State<SlideView> createState() => _SlideViewState();
}

class _SlideViewState extends State<SlideView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://m.media-amazon.com/images/M/MV5BOGVjMDEzNjMtMWJmMy00NDdjLWFkMzItOTBhZTE3OWU0YmM4XkEyXkFqcGc@._V1_.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    'Select Date and Time',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Wrap(
                    spacing: 10,
                    children: List.generate(5, (index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: index == 2 ? Colors.red : Colors.black,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.red),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Thu 21',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '12:30',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Reservation',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
