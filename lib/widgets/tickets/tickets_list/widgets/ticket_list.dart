import 'package:flutter/material.dart';
import 'package:saifu/widgets/tickets/tickets_list/widgets/ticket_item.dart';
import 'package:saifu/domain/ticket.dart';

class TicketList extends StatelessWidget {
  const TicketList({Key? key, required this.tickets}) : super(key: key);

  final List<Ticket> tickets;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tickets.length,
      itemBuilder: (BuildContext context, int index) => TicketItem(
        ticket: tickets[index],
      ),
    );
  }
}
