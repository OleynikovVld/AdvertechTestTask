class ContactModel {
  final String name;
  final String email;
  final String message;

  ContactModel({
    required this.name,
    required this.email,
    required this.message,
  });

  Map<String, dynamic> toJsom() {
    return {
      "name": name,
      "email": email,
      "message": message,
    };
  }
}
