import 'package:flutter/material.dart';
import 'package:tlv/features/home/data/models/mission.dart';

class MissionsList extends StatefulWidget {
  final List<Mission> missions;
  final bool canLoad;
  final VoidCallback onScrollExtentReached;

  const MissionsList({
    super.key,
    required this.missions,
    required this.canLoad,
    required this.onScrollExtentReached,
  });

  @override
  State<MissionsList> createState() => _MissionsListState();
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
      widget.onScrollExtentReached();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.missions.length + (widget.canLoad ? 1 : 0),
      controller: _scrollController,
      itemBuilder: (_, index) {
        if (index == widget.missions.length) {
          return const _LoadingIndicator();
        }

        final mission = widget.missions[index];

        return _MissionWidget(
          key: ObjectKey(mission),
          mission: mission,
        );
      },
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _MissionWidget extends StatelessWidget {
  const _MissionWidget({
    super.key,
    required this.mission,
  });

  final Mission mission;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mission.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            if (mission.details != null) ...[
              const SizedBox(
                height: 8.0,
              ),
              Text(mission.details!),
            ],
          ],
        ),
      ),
    );
  }
}
