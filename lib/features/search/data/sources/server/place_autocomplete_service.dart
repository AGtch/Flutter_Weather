import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/utils/constance/strings.dart';
import '../../models/suggestion.dart';

part 'place_autocomplete_service.g.dart';

@RestApi(baseUrl: placeAutocompleteBaseUrl)
abstract class GoogleAutoCompletePlaceService {
  factory GoogleAutoCompletePlaceService(Dio dio, {String baseUrl}) =
      _GoogleAutoCompletePlaceService;

  @GET('json')
  Future<Suggestion> getPlaceSuggestion(
    @Query('input') String cityName,
    @Query('type') String typeOfResponse,
    @Query('key') String apiPlaceAutocompleteKey,
    @Query('sessiontoken') String sessionToken,
  );
}
