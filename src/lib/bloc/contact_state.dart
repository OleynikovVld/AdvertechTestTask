part of 'contact_bloc.dart';

abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactValidState extends ContactState {}

class ContactInvalidState extends ContactState {}
