import 'package:flutter/material.dart';

class TicketBanner extends StatelessWidget {
  const TicketBanner(
      {super.key, required this.imageUrl, required this.eventName});

  final String imageUrl;
  final String eventName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      eventName,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Image(
                        image: AssetImage('assets/kippu_mono.png'), height: 50),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
