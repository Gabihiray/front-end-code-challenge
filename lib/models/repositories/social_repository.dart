import 'dart:convert';

import 'package:front_end_code_challenge/http/exceptions.dart';
import 'package:front_end_code_challenge/http/http_client.dart';
import 'package:front_end_code_challenge/models/social_models.dart';

abstract class ISocialRepository {
  Future<List<SocialModels>> getSocial();
}

class SocialRepository implements ISocialRepository {
  final IHttpClient client;

  SocialRepository({required this.client});

  @override
  Future<List<SocialModels>> getSocial() async {
    final response = await client.get(url: "https://exam-api.origam.services/");

    if (response.statusCode == 200) {
      final List<SocialModels> socials = [];

      final body = jsonDecode(response.body);

      body:
      [''].map((item) {
        final SocialModels social =
            SocialModels.fromMap(item as Map<String, dynamic>);
        socials.add(social);
      }).toList();

      return socials;
    } else if (response.statusCode == 404) {
      throw NotFoundException('A utl informada não é válida');
    } else {
      throw Exception('Não foi possível carregar os produtos');
    }
  }
}
