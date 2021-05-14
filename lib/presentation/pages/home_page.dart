import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlv/presentation/bloc/home_bloc.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/presentation/bloc/home_states.dart';
import 'package:tlv/presentation/widgets/missions_list.dart';
import 'package:tlv/services/service_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputHeight = 51.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Mission Finder MKI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                onChanged: (key) =>
                    locator<HomeBloc>().add(SearchEnteredEvent(key)),
                decoration: InputDecoration(
                  labelText: 'Mission Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight - inputHeight,
              child: BlocBuilder<HomeBloc, HomeState>(
                  bloc: locator<HomeBloc>()..add(InitEvent()),
                  builder: (context, state) {
                    return state.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (missions) =>
                          MissionsList(missions: missions, isLoading: true),
                      completed: (missions) =>
                          MissionsList(missions: missions, isLoading: false),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
