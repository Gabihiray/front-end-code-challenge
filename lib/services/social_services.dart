import 'package:http/http.dart' as http;

class SocialService {
  static const String url = "https://exam-api.origam.services/api/";
  static const String resource = "posts/";

  String getUrl() {
    return "$url$resource";
  }

  register(String title) {
    http.post(Uri.parse(getUrl()), body: {"title": title});
  }
}
