import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<FirstNameChanged>((event, emit) {
      emit(state.copyWith(firstName: event.firstName));
    });

    on<LastNameChanged>((event, emit) {
      emit(state.copyWith(lastName: event.lastName));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PhoneChanged>((event, emit) {
      emit(state.copyWith(phone: event.phone));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(confirmPassword: event.confirmPassword));
    });

    on<TermsAcceptedChanged>((event, emit) {
      emit(state.copyWith(isChecked: event.isChecked));
    });

    on<SubmitForm>((event, emit) {
      final isFormValid = state.firstName.isNotEmpty &&
          state.lastName.isNotEmpty &&
          state.email.contains('@') &&
          state.phone.length == 10 &&
          state.password.length >= 6 &&
          state.password == state.confirmPassword &&
          state.isChecked;

      if (isFormValid) {
        emit(state.copyWith(isFormValid: true));
      }
    });
  }
}
