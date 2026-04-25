import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/utils/repo.dart';
import 'package:flutter_application_1/Features/workout/widget/model.dart';

class WorkoutView extends StatefulWidget {
  const WorkoutView({super.key});

  @override
  State<WorkoutView> createState() => _WorkoutViewState();
}

class _WorkoutViewState extends State<WorkoutView> {
  final Repo repo = Repo();

  List<Exercise>? ex;
  Future<void> geee() async {
    try {
      ex = await repo.getdata();
      setState(() {});
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    geee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Workout")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final data = ex![index];
          return Center(
            child: Text(
              "${data.bodyPart}",
              style: TextStyle(color: Colors.black),
            ),
          );
        },
        itemCount: ex?.length ?? 0,
      ),
    );
  }
}
