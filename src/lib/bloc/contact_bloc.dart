import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInvalidState()) {
    on<CheckIfValidEvent>(_checkIfValid);
  }

  _checkIfValid(CheckIfValidEvent event, Emitter<ContactState> emit) {
    if (event.name != '' &&
        event.email != '' &&
        event.message != '' &&
        EmailValidator.validate(event.email)) {
      emit(ContactValidState());
    }
  }
}
