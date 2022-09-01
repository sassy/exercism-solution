class Bob {
  String response(String question) {
    if (question.trim() == '') {
      return 'Fine. Be that way!';
    } else if (question.trim().contains(RegExp(r'\?$'))) {
      if (question.contains(RegExp(r'[a-zA-Z]')) &&
          question == question.toUpperCase()) {
        return "Calm down, I know what I'm doing!";
      } else {
        return 'Sure.';
      }
    } else {
      if (question.contains(RegExp(r'[a-zA-Z]')) &&
          question == question.toUpperCase()) {
        return 'Whoa, chill out!';
      } else {
        return 'Whatever.';
      }
    }
  }
}
