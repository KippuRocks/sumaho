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
        id: "9098a96f-d95c-410c-84df-4327822158d0",
        eventId: "8ce3d616-6e22-4301-be0d-5b8364cdb923",
        description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        imageUrl: "https://kodadot.xyz/cdn-cgi/imagedelivery/jk5b6spi_m_-9qC4VTnjpg/bafkreib3xw6s2c3kd4gttopij5c6cdgph2xytzigdupbifsgwcdiannewe/w=2000"),
    Ticket(
        id: "9098a96f-d95c-410c-84df-4327822158d0",
        eventId: "8ce3d616-6e22-4301-be0d-5b8364cdb923",
        description: "Baum Festival 2",
        imageUrl: "https://kodadot.xyz/cdn-cgi/imagedelivery/jk5b6spi_m_-9qC4VTnjpg/bafkreib3xw6s2c3kd4gttopij5c6cdgph2xytzigdupbifsgwcdiannewe/w=2000",
        eventName: "Baum Festival",
        eventDate: DateTime(2024, 5, 14))
  ];

  @override
  Widget build(BuildContext context) {
    return TicketList(tickets: _tickets);
  }
}
