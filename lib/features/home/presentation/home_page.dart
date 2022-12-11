import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlv/core/service_locator.dart';
import 'package:tlv/features/home/presentation/cubit/home_cubit.dart';
import 'package:tlv/features/home/presentation/widgets/missions_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = injector<HomeCubit>()..loadMissions();

    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: const [
              _SearchField(),
              Expanded(
                child: _Body(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.map(
          error: (_) => const _ErrorWidget(),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (loadedState) => MissionsList(
            missions: loadedState.missions,
            canLoad: loadedState.canLoadMore,
            onScrollExtentReached:
                context.read<HomeCubit>().onScrollExtentReached,
          ),
        );
      },
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Error!'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: context.read<HomeCubit>().loadMissions,
            child: const Text(
              'Retry',
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            onChanged: context.read<HomeCubit>().onSearchEntered,
            decoration: InputDecoration(
              labelText: 'Mission Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              isDense: true,
            ),
          ),
        ),
      ),
    );
  }
}
