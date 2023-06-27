void exercices() {
  // 1
  print('Hello, world !');

  // 2
  String message = 'Hello, World !';

  print(message);

  // 3
  const String hello = 'Hello';
  const String world = 'World';

  print('$hello, $world !');

  // 4
  print('${hello.toUpperCase()}, ${world.toUpperCase()} !');

  // 5
  print(message.substring(0, 5));

  // 6
  const String message2 = 'Hello, World !';

  print(message2.length);

  // 7
  const String welcome = 'Hello, World !';

  String numberify(String s) {
    String lower = s.toLowerCase();
    String result = '';
    for (int i = 0; i < s.length; i++) {
      switch (lower[i]) {
        case 'a':
          result += '4';
          break;
        case 'e':
          result += '3';
          break;
        case 'l':
          result += '1';
          break;
        case 'o':
          result += '8';
          break;
        case 's':
          result += '5';
          break;
        default:
          result += s[i];
      }
    }
    return result.toUpperCase();
  }

  print(numberify(welcome));

  // 8
  const String welcome2 = 'Hello World';
  final List<String> words = welcome2.split(' ');

  print(words);

  // 9
  String pwd = '';
  print(pwd.isEmpty ? 'Mot de passe manquant' : 'Mot de passe fourni');

  // 10
  String email = 'john@doe.com';
  bool isEmail = email.contains('@') && email.contains('.');

  print(isEmail ? 'C\'est un email' : 'Ce n\'est pas un email');
}