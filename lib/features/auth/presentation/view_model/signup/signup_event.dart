import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FirstNameChanged extends SignUpEvent {
  final String firstName;

  FirstNameChanged(this.firstName);

  @override
  List<Object?> get props => [firstName];
}

class LastNameChanged extends SignUpEvent {
  final String lastName;

  LastNameChanged(this.lastName);

  @override
  List<Object?> get props => [lastName];
}

class EmailChanged extends SignUpEvent {
  final String email;

  EmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

class PhoneChanged extends SignUpEvent {
  final String phone;

  PhoneChanged(this.phone);

  @override
  List<Object?> get props => [phone];
}

class PasswordChanged extends SignUpEvent {
  final String password;

  PasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

class ConfirmPasswordChanged extends SignUpEvent {
  final String confirmPassword;

  ConfirmPasswordChanged(this.confirmPassword);

  @override
  List<Object?> get props => [confirmPassword];
}

class TermsAcceptedChanged extends SignUpEvent {
  final bool isChecked;

  TermsAcceptedChanged(this.isChecked);

  @override
  List<Object?> get props => [isChecked];
}

class SubmitForm extends SignUpEvent {}
