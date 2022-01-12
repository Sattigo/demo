import 'package:demo/app/bloc/dogs/dogs_page_bloc.dart';
import 'package:demo/app/bloc/dogs/dogs_page_event.dart';
import 'package:demo/app/bloc/dogs/dogs_page_state.dart';
import 'package:demo/app/pages/dogs_page/dogs_page_error_state.dart';
import 'package:demo/app/pages/dogs_page/dogs_page_init_state.dart';
import 'package:demo/app/pages/dogs_page/dogs_page_loaded_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsPage extends StatelessWidget {
  const DogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DogsPageBloc, DogsPageState>(
        builder: (ctx, state) {
          return state.when(
              init: () => const DogsPageInitState(),
              loaded: (pictures) => DogsPageLoadedState(dogsPictures: pictures),
              error: () => DogsPageErrorState(
                    reload: () => _reload(context),
                  ));
        },
      ),
    );
  }

  void _reload(BuildContext context) {
    BlocProvider.of<DogsPageBloc>(context).add(const DogsPageEvent.init());
  }
}
