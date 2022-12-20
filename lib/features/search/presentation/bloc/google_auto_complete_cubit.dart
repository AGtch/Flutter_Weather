import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/features/search/data/models/suggestion.dart';

import '../../data/repositories/place_autocoplete_repository.dart';
import 'google_auto_complete_state.dart';

class GoogleAutoCompleteCubit
    extends Cubit<GoogleAutoCompleteState<Suggestion>> {
  GoogleAutoCompleteRepository googleAutoCompleteRepository;

  GoogleAutoCompleteCubit({required this.googleAutoCompleteRepository})
      : super(AutocompleteLoading());

  // static getGoogleAutocomplete(context) =>
  //     BlocProvider.of<GoogleAutoCompleteCubit>(context);

  Future<void> getPlacesSuggestions(String city) async {
    var suggestions =
        await googleAutoCompleteRepository.getPlaceSuggestion(city);
    suggestions.when(
      success: (data) {
        emit(AutocompleteLoading());
        log(data.predictions.toList().toString());
        emit(AutocompleteSuccess(data));
      },
      failure: (networkExceptions) {
        AutocompleteError(error: networkExceptions);
      },
    );
  }
}
