import 'package:demo/app/bloc/initial/initial_page_bloc.dart';
import 'package:demo/app/bloc/initial/initial_page_state.dart';
import 'package:demo/app/pages/initial/init_state.dart';
import 'package:demo/app/pages/initial/loaded_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InitialPageBloc, InitialPageState>(
        builder: (ctx, state) {
          return state.when(
              init: () => const InitState(), loaded: () => const LoadedState());
        },
      ),
    );
  }
}
