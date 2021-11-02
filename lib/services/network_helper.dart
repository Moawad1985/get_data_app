
import 'package:dio/dio.dart';

class NetworkHelper{
  Future<List<dynamic>> getComments()async{
    final response = await Dio().get('https://jsonplaceholder.typicode.com/comments');
    return response.data;
  }
}