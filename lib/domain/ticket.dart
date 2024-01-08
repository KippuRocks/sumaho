class Ticket {
  String id;
  String eventId;
  String description;
  String imageUrl;

  String? eventName;
  DateTime? eventDate;

  Ticket({required this.id, required this.eventId, required this.description, required this.imageUrl, this.eventName, this.eventDate});
}
