import 'package:flutter/material.dart';
import 'package:tlv/presentation/bloc/home_bloc.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/presentation/bloc/home_states.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeBlock _controller;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _controller = HomeBlock();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.onDispose();
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.maxScrollExtent ==
        _scrollController.offset) {
      _controller.pushEvent(ScrollExtentReachedEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputHeight = 50.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Mission Finder MKI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            SizedBox(
              height: inputHeight,
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight - inputHeight,
              child: StreamBuilder<HomeState>(
                  initialData: _controller.currentState,
                  stream: _controller.dataStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Container();
                    }
                    return snapshot.data!.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (missions, loading) => ListView.builder(
                        itemCount: missions.length + (loading ? 1 : 0),
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          if (index == missions.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    missions.elementAt(index).name,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  if (missions.elementAt(index).details !=
                                      null) ...[
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(missions.elementAt(index).details!),
                                  ]
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
