class Ticket {
  String name;
  String description;
  String imageUrl;
  bool assistance;

  //  Properties
  String id;
  String eventId;
  EventDates eventDates;
  Price price;

  //  Event complementary info (for display)
  String eventName;

  Ticket({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.assistance,
    required this.id,
    required this.eventId,
    required this.eventDates,
    required this.price,
    required this.eventName,
  });
}

class EventDates {
  DateTime startsAt;
  DateTime endsAt;

  EventDates({required this.startsAt, required this.endsAt});
}

class Price {
  Asset asset;
  Ammounts ammounts;

  Price({required this.asset, required this.ammounts});
}

class Asset {
  int id;
  String code;
  int decimals;

  Asset({required this.id, required this.code, required this.decimals});
}

class Ammounts {
  int ticket;

  Ammounts({required this.ticket});
}
