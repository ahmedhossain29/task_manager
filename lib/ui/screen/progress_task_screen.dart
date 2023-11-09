import 'package:flutter/material.dart';
import '../widgets/profile_widget.dart';
import '../widgets/summary_card_widget.dart';
import '../widgets/task_item_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SafeArea(
  child: Column(
    children: [
      const ProfileWidget(),
      Expanded(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index){
              return  const TaskItemCard();
            }),
      )

    ],
  ),
),
    );
  }
}
