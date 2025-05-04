import 'package:flutter/material.dart';
import 'package:flutter_application_1/switch/bloc/switch_bloc.dart';
import 'package:flutter_application_1/switch/bloc/switch_event.dart';
import 'package:flutter_application_1/switch/bloc/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Switch')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  BlocBuilder<SwitchBloc, SwitchStates>(
                    builder: (context, state) {
                      return Switch(
                        value: state.isNotificationEnabled,
                        onChanged: (value) {
                          print(value);
                          if (state.isNotificationEnabled) {
                            context.read<SwitchBloc>().add(
                              DisableNotification(),
                            );
                          } else {
                            context.read<SwitchBloc>().add(
                              EnableNotification(),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(height: 200, color: Colors.red),
              SizedBox(height: 40),
              Slider(value: 0, onChanged: (value) {}),
            ],
          ),
        ),
      ),
    );
  }
}
