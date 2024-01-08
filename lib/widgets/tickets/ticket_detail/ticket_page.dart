import 'package:flutter/material.dart';
import 'package:saifu/domain/ticket.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ticket.eventName ?? "Event Name Placeholder"),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                ticket.imageUrl,
                fit: BoxFit.cover,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Image(
                              image: AssetImage('assets/kippu_mono.png'),
                              height: 50),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ticket.eventName ?? "Not Provided",
                  style: const TextStyle(fontSize: 36),
                ),
                Text("#${ticket.id}"),
                const Divider(height: 20),
                Text(
                  ticket.description,
                  softWrap: true,
                ),
                const Row(),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.transfer_within_a_station),
                  label: const Text("Transfer this Tticket"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
                const SizedBox(height: 15),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.sell),
                  label: const Text("Sell this Tticket"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
