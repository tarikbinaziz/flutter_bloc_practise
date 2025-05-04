



import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable {
  bool isNotificationEnabled;
  SwitchStates({this.isNotificationEnabled = false});

  SwitchStates copyWith({bool? isSwitched}) {
    return SwitchStates(
      isNotificationEnabled: isSwitched ?? isNotificationEnabled,
    );
  }

  @override
  List<Object> get props => [isNotificationEnabled];
}
