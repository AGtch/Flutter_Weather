import 'package:flutter/foundation.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/api_response.dart';
import '../../../../core/utils/constance/strings.dart';
import '../../../../core/utils/network_exceptions/network_exceptions.dart';
import '../models/predictions_model.dart';
import '../models/suggestion.dart';
import '../sources/server/place_autocomplete_service.dart';

class GoogleAutoCompleteRepository {
  final GoogleAutoCompletePlaceService googleAutoCompletePlaceService;

  GoogleAutoCompleteRepository(this.googleAutoCompletePlaceService);

  Future<ApiResponse<Suggestion>> getPlaceSuggestion(String city) async {
    try {
      var response = await googleAutoCompletePlaceService.getPlaceSuggestion(
        city,
        'geocode',
        placeAutocompleteApiKey,
        generateSessionTokenUuid4(),
      );
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }

  String generateSessionTokenUuid4() {
    return Uuid().v4();
  }

  Future<Prediction> getPlace(context) async {
    Prediction p = (await PlacesAutocomplete.show(
        context: context,
        apiKey: placeAutocompleteApiKey,
        mode: Mode.overlay, // Mode.fullscreen
        sessionToken: generateSessionTokenUuid4()) as Prediction);

    debugPrint('login________search__________result ${p.description}');
    return p;
  }
}
