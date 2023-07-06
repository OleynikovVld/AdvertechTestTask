part of 'contact_bloc.dart';

abstract class ContactEvent {}

class CheckIfValidEvent extends ContactEvent {
  final String name;
  final String email;
  final String message;

  CheckIfValidEvent({
    required this.name,
    required this.email,
    required this.message,
  });
}
