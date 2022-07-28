import 'package:dio/dio.dart';

import 'person.dart';

abstract class Services {
  static Future<Person?> getById(int id) async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users/$id');

      if (response.statusCode == 200) {
        return Person(
            id: response.data['id'],
            name: response.data['name'],
            email: response.data['email']);
      }

      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<Person?> createUser(String firstName, String lastName, String email) async {
    try {
      var response = await Dio().post(
          'https://jsonplaceholder.typicode.com/users/',
          data: {'first_name': firstName, 'last_name': lastName, 'email': email});

      if (response.statusCode == 201) {
        return Person(
            id: int.tryParse(response.data['id'].toString()) ?? 0,
            name: response.data['first_name'] + ' ' + response.data['last_name'],
            email: response.data['email']);
      }

      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
