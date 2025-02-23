import 'package:flutter/material.dart';

void main() {
  runApp(const ABA_App());
}

class ABA_App extends StatelessWidget {
  const ABA_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ABAHomeScreen(),
    );
  }
}

class ABAHomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.account_balance_wallet, 'label': 'Accounts'},
    {'icon': Icons.sync_alt, 'label': 'Transfer'},
    {'icon': Icons.payment, 'label': 'Payments'},
    {'icon': Icons.attach_money, 'label': 'Deposit'},
    {'icon': Icons.account_balance, 'label': 'Cash to ATM'},
    {'icon': Icons.credit_card, 'label': 'Virtual Card'},
    {'icon': Icons.qr_code, 'label': 'QR Payment'},
    {'icon': Icons.phone, 'label': 'Contact Us'},
    {'icon': Icons.location_on, 'label': 'ABA Locator'},
  ];

  ABAHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 239, 126, 88),
      backgroundColor: const Color.fromARGB(255, 30, 72, 52),
      appBar: AppBar(
        title: const Text(
          'ABA Mobile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: const Icon(Icons.person),
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(menuItems[index]['icon'],
                            size: 40, color: Colors.white),
                        const SizedBox(height: 10),
                        Text(
                          menuItems[index]['label'],
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          _quickActionTile(
              'Quick Transfer',
              'Create your template here to make transfer quicker',
              Colors.lightBlue),
          _quickActionTile('Quick Payment',
              'Paying your bills with templates is faster', Colors.red),
        ],
      ),
    );
  }

  Widget _quickActionTile(String title, String subtitle, Color color) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
