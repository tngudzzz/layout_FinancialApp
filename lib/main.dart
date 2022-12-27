import 'package:flutter/material.dart';
import 'package:nomad_1/widget/button.dart';
import 'package:nomad_1/widget/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hi, Chris',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5,194,482',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 44,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Transfer',
                      bgcolor: Color(0xFFF1B33B),
                      textcolor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgcolor: Color(0xFF1F2123),
                      textcolor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyWidget(
                    bgColor: Color(0xFF1F2123),
                    count: '6 428',
                    moneyIcon: Icons.euro,
                    name: 'Euro',
                    textColor: Colors.white,
                    won: 'EUR'),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const MyWidget(
                      bgColor: Colors.white,
                      count: '9 785',
                      moneyIcon: Icons.currency_bitcoin,
                      name: 'Bitcoin',
                      textColor: Colors.black,
                      won: 'BTC'),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const MyWidget(
                      bgColor: Color(0xFF1F2123),
                      count: '428',
                      moneyIcon: Icons.attach_money,
                      name: 'Dollar',
                      textColor: Colors.white,
                      won: 'USD'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
