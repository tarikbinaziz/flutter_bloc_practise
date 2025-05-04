import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/switch/bloc/switch_event.dart';
import 'package:flutter_application_1/switch/bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableNotification>(_enableNotification);
    on<DisableNotification>(_disableNotification);
  }

  _enableNotification(EnableNotification event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitched: true));
  }

  _disableNotification(DisableNotification event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitched: false));
  }
}
