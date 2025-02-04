import 'package:equatable/equatable.dart';

class SignUpState extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;
  final bool isChecked;
  final bool isFormValid;

  const SignUpState({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.phone = '',
    this.password = '',
    this.confirmPassword = '',
    this.isChecked = false,
    this.isFormValid = false,
  });

  SignUpState copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? password,
    String? confirmPassword,
    bool? isChecked,
    bool? isFormValid,
  }) {
    return SignUpState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      isChecked: isChecked ?? this.isChecked,
      isFormValid: isFormValid ?? this.isFormValid,
    );
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        email,
        phone,
        password,
        confirmPassword,
        isChecked,
        isFormValid,
      ];
}
