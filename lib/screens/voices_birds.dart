class VoicesList {
  String name;
  String latin;
  String family;

  VoicesList({
    required this.name,
    required this.latin,
    required this.family,
  });

  static List<VoicesList> voicesBirds = [
    VoicesList(name: "Синица", latin: "Parus Major", family: "Синицы"),
    VoicesList(name: "Снегирь", latin: "Pyrrhula pyrrhula", family: "Снегири"),
  ];
}
