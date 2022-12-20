import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/features/search/data/models/predictions_model.dart';
import 'package:flutter_weather/features/search/presentation/bloc/google_auto_complete_cubit.dart';
import 'package:flutter_weather/features/search/presentation/bloc/google_auto_complete_state.dart';

import '../../data/models/suggestion.dart';

class SearchScreen extends SearchDelegate<Prediction?> {
  final GoogleAutoCompleteCubit googleAutoCompleteCubit;

  SearchScreen(this.googleAutoCompleteCubit);

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        tooltip: 'Clear',
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        tooltip: 'Back',
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Suggestions'),
      ),
    );
  }

  @override
//TODO : You NEED TO SOLVE BLOC with FutureBuilder
  Widget buildSuggestions(BuildContext context) {
    googleAutoCompleteCubit.getPlacesSuggestions(query);

    return BlocBuilder<GoogleAutoCompleteCubit, GoogleAutoCompleteState>(
      bloc: googleAutoCompleteCubit,
      builder: (BuildContext context, GoogleAutoCompleteState state) {
        Suggestion suggestion;
        if (state is AutocompleteSuccess) {
          suggestion = state.data;
        } else {
          return Center(child: Text('Suggestion'));
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            print("------------builder--------------");
            return ListTile(
                leading: Icon(Icons.location_on),
                title: Text(suggestion.predictions[index].description!),
                onTap: () {
                  close(context, suggestion.predictions[index]);
                });
          },
          itemCount: suggestion.predictions.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
        );
      },
    );
  }
}
