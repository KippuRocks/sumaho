import 'package:flutter/material.dart';
import 'package:saifu/domain/ticket.dart';
import 'package:saifu/widgets/tickets/ticket/widgets/ticket_banner.dart';
import 'package:saifu/widgets/tickets/ticket/widgets/ticket_info.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ticket.eventName),
      ),
      body: ListView(
        children: [
          TicketBanner(
            imageUrl: ticket.imageUrl,
            eventName: ticket.eventName,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TicketInfo(ticket: ticket),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.event),
                  label: const Text("Event details"),
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Divider(height: 20),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.store),
                  label: const Text("Sell"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.move_up),
                  label: const Text("Transfer"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.qr_code)),
    );
  }
}
