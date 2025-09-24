class Character {
  final String _name;
  int _health = 0;
  int _power = 0;

  Character({String name}) : _name = name {}

  attack(Character ch) {}
}

class Wizard extends Character {
  attack(Character ch) {}
}

class Goblin extends Character {
  attack(Character ch) {}
}

class Dragon extends Character {
  attack(Character ch) {}
}

class Rogue extends Character {
  attack(Character ch) {}
}

class Move {
  final String _name;
  bool _isDefense;

  Move({String name, bool isDefense}) : _name = name, _isDefense = isDefense;

  apply(Move move);
}

class Spell extends Move {
  apply(Move move);
}

void main() {}
