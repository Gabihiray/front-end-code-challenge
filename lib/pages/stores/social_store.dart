import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/http/exceptions.dart';
import 'package:front_end_code_challenge/models/repositories/social_repository.dart';
import 'package:front_end_code_challenge/models/social_models.dart';

class socialStore {
  final ISocialRepository repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<SocialModels>> state =
      ValueNotifier<List<SocialModels>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  socialStore({required this.repository});

  getSocial() async {
    isLoading.value = true;

    try {
      final result = await repository.getSocial();
      state.value = result;
    } on NotFoundException catch (e) {
      erro.value == e.message;
    } catch (e) {
      erro.value = e.toString();
    }
    isLoading.value = false;
  }
}
