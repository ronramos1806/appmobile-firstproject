import 'dart:convert';

import 'package:best_flutter_ui_templates/hotel_booking/model/announce_model.dart';
import 'package:http/http.dart' as http;

class AnnouncesProvider {
  final String _url = 'http://10.0.2.2:8080/api';

  Future<List<AnnounceModel>> loadAnnounces() async {
    final url = '$_url/announces';
    final resp = await http.get(url);

    // final Map<String, dynamic> decodedData = 
    final List<dynamic> decodedData = json.decode(resp.body);
    final List<AnnounceModel> announces = new List();

    if (decodedData == null) return [];

    decodedData.forEach(( announce ) {      
      announces.add(AnnounceModel.fromJson(announce));
    });

    print( announces );

    return announces;
  }
}
