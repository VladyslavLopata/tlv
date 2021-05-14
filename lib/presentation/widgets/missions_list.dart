import 'package:flutter/material.dart';
import 'package:tlv/domain/entities/mission.dart';
import 'package:tlv/presentation/bloc/home_bloc.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/services/service_locator.dart';

class MissionsList extends StatefulWidget {
  final List<Mission> missions;
  final bool isLoading;
  const MissionsList({
    Key? key,
    required this.missions,
    required this.isLoading,
  }) : super(key: key);

  @override
  _MissionsListState createState() => _MissionsListState();
}

class _MissionsListState extends State<MissionsList> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.maxScrollExtent ==
        _scrollController.offset) {
      locator<HomeBloc>().add(ScrollExtentReachedEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.missions.length + (widget.isLoading ? 1 : 0),
      controller: _scrollController,
      itemBuilder: (context, index) {
        if (index == widget.missions.length) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.missions.elementAt(index).name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                if (widget.missions.elementAt(index).details != null) ...[
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(widget.missions.elementAt(index).details!),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
