import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<CheckIfValidEvent>((event, emit) {
      if (event.name == '') {
        emit(ContactInvalidState());
      } else if (event.email == '' || !EmailValidator.validate(event.email)) {
        emit(ContactInvalidState());
      } else if (event.message == '') {
        emit(ContactInvalidState());
      } else {
        emit(ContactValidState());
      }
    });
  }
}
