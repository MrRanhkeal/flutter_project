import 'package:flutter/material.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Choose your seats',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SeatGrid(),
            ),
          ),
          Expanded(
            flex: 1,
            child: SeatInfoSection(),
          ),
        ],
      ),
    );
  }
}

class SeatGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        Color seatColor = Colors.grey;
        if (index % 8 == 2 || index % 8 == 3) {
          seatColor = Colors.cyan;
        } else if (index % 5 == 0) {
          seatColor = Colors.red;
        }
        return Icon(
          Icons.event_seat,
          color: seatColor,
          size: 30,
        );
      },
    );
  }
}

class SeatInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LegendItem(color: Colors.grey, label: 'Available'),
              SizedBox(width: 10),
              LegendItem(color: Colors.red, label: 'Reserved'),
              SizedBox(width: 10),
              LegendItem(color: Colors.cyan, label: 'Selected'),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'June 21st, 2023 • 6 p.m.\nVIP Section • Seats 5-7\nTotal: \$10',
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {},
            child: Text(
              'Buy',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  
  LegendItem({required this.color, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.event_seat, color: color, size: 20),
        SizedBox(width: 5),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}