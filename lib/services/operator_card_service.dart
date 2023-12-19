import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_pocket/models/operator_card_model.dart';
import 'package:my_pocket/services/auth_service.dart';
import 'package:my_pocket/shared/shared_values.dart';

class OperatorCardService {
  Future<List<OperatorCardModel>> getOperatorCards() async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse('$baseUrl/operator_cards'),
        headers: {'Authorization': token},
      );

      if (res.statusCode == 200) {
        return List<OperatorCardModel>.from(
          jsonDecode(res.body)['data'].map(
            (operatorCard) => OperatorCardModel.formJson(operatorCard),
          ),
        ).toList();
      }

      throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }
}
