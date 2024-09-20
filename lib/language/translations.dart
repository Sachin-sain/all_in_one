import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'welcome': 'Welcome',
      'language': 'Language',
      'change_language': 'Change Language',
    },
    'hi_IN': {
      'hello': 'नमस्ते',
      'welcome': 'स्वागत है',
      'language': 'भाषा',
      'change_language': 'भाषा बदलें',
    },
  };
}
