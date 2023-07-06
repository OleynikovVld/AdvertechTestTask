import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:src/data/contact_model.dart';
import 'package:src/data/contact_repository.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository repository;

  ContactBloc({required this.repository}) : super(ContactInvalidState()) {
    on<CheckIfValidEvent>(_checkIfValid);
    on<SendContactEvent>(_sendContact);
  }

  _checkIfValid(CheckIfValidEvent event, Emitter<ContactState> emit) {
    if (event.name != '' &&
        event.email != '' &&
        event.message != '' &&
        EmailValidator.validate(event.email)) {
      emit(ContactValidState());
    }
  }

  _sendContact(SendContactEvent event, Emitter<ContactState> emit) async {
    emit(ContactLoadingState());
    await Future.delayed(const Duration(seconds: 1));

    try {
      await repository.sendMessage(event.message);
      emit(ContactSuccessfulState());
    } catch (error) {
      emit(ContactFailureState());
    }
  }
}
