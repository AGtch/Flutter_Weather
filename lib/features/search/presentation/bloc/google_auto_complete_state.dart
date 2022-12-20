import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/network_exceptions/network_exceptions.dart';

part 'google_auto_complete_state.freezed.dart';

@freezed
class GoogleAutoCompleteState<T> with _$GoogleAutoCompleteState<T> {
  // const factory GoogleAutoCompleteState.idle() = AutocompleteIdle<T>;

  const factory GoogleAutoCompleteState.loading() = AutocompleteLoading<T>;

  const factory GoogleAutoCompleteState.success(T data) =
      AutocompleteSuccess<T>;

  const factory GoogleAutoCompleteState.error(
      {required NetworkExceptions error}) = AutocompleteError<T>;
}
