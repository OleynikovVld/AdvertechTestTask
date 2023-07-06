part of 'contact_bloc.dart';

abstract class ContactState {}

class ContactValidState extends ContactState {}

class ContactInvalidState extends ContactState {}

class ContactFailureState extends ContactState {}

class ContactLoadingState extends ContactState {}

class ContactSuccessfulState extends ContactState {}
