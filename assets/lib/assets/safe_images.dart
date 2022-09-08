enum SafeImages {
  app,
  lock_pick,
}

extension SafeImageExtension on SafeImages {
  String get png => "images/$name.png";

  String get package => "assets";
}
