import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saifu/domain/ticket.dart';
import 'package:saifu/widgets/tickets/ticket/ticket_page.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({Key? key, required this.ticket}) : super(key: key);

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TicketPage(ticket: ticket)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.eventName,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text("# ${ticket.id}"),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: ticket.assistance,
                    child: const Chip(
                      label: Text("Assistance"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${DateFormat.yMEd().format(ticket.eventDates.startsAt)} to ${DateFormat.yMEd().format(ticket.eventDates.endsAt)}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
