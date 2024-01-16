class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  List<GameImage> images;
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio, {List<GameImage>? images})
      : images = images ?? []; // Use the null-aware operator to handle null case.
}

List<Game> gamesone = [
  Game(
    "Metro Exodus",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/4_s8dyxn.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Horizon Zero Dawn",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/5_wfrudr.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/3_tuyl8k.jpg",
        ""),
    "",
    "Capcom",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/6_jfehmd.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Tom 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/7_jgmasj.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Frank 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/8_ozvg8z.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Scarface 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/9_mp3sgb.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Scarface 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/10_u6hybr.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
];

List<Game> gamestwo = [
  Game(
    "Frank 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/8_ozvg8z.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Scarface 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/9_mp3sgb.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Scarface 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/10_u6hybr.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "execute Kali",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/4_s8dyxn.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Two Bay",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/5_wfrudr.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Evil 2",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/3_tuyl8k.jpg",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> topgames = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/zn2peq18sibcra1rzbmt.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/pohmsmd0ll3byzrndjzo.jpg",
        ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/bylceymlhn0hgs5d4m7l.jpg",
        ""),
    "",
    "NetherRealm Studios",
  ),
  Game(
    "Dragon Ball Z: Kakarot",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/sz4lyhxa94pe4lnj9y8l.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "Red Dev",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/pvlrkltcaxnjwb3s1vjh.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "Blue Dev",
    GameImage(
        "https://res.cloudinary.com/dnmvkq8sl/image/upload/v1705432033/uqpbyijazqvwvbugcfkp.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
];
