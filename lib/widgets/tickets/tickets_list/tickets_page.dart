import 'package:flutter/material.dart';
import 'package:saifu/domain/ticket.dart';
import 'package:saifu/widgets/tickets/tickets_list/widgets/ticket_list.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  final List<Ticket> _tickets = [
    Ticket(
        name: "Kippu Music Festival #00000000",
        description: "Ticket #00000000 for The Kippu Music Festival (Event #30225709 - Test).\n\nEvent created using [Kippu](https://kippu.rocks).",
        imageUrl: "https://kodadot.xyz/cdn-cgi/imagedelivery/jk5b6spi_m_-9qC4VTnjpg/bafkreib3xw6s2c3kd4gttopij5c6cdgph2xytzigdupbifsgwcdiannewe/w=1000",
        assistance: false,
        id: "0",
        eventId: "30225710",
        eventDates: EventDates(startsAt: DateTime(1705269600000), endsAt: DateTime(1705287600000)),
        price: Price(asset: Asset(id: 863012, code: "COP", decimals: 2), ammounts: Ammounts(ticket: 0)),
        eventName: "Kippu Music Festival"
    ),
    Ticket(
        name: "Kippu Music Festival #00000001",
        description: "Ticket #00000000 for The Kippu Music Festival (Event #30225709 - Test).\n\nEvent created using [Kippu](https://kippu.rocks).",
        imageUrl: "https://kodadot.xyz/cdn-cgi/imagedelivery/jk5b6spi_m_-9qC4VTnjpg/bafkreib3xw6s2c3kd4gttopij5c6cdgph2xytzigdupbifsgwcdiannewe/w=1000",
        assistance: true,
        id: "1",
        eventId: "30225710",
        eventDates: EventDates(startsAt: DateTime(1705269600000), endsAt: DateTime(1705287600000)),
        price: Price(asset: Asset(id: 863012, code: "COP", decimals: 2), ammounts: Ammounts(ticket: 0)),
        eventName: "Kippu Music Festival"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TicketList(tickets: _tickets);
  }
}
