import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<dynamic> fetchData(String endpoint) async {
    final String baseUrl = "https://vietnhat.vttechsolution.vn/api"; // (Sau này thay đúng API thật)

    try {
      final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Lỗi server: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Không thể kết nối tới server: $e');
    }
  }
}

