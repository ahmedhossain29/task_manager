import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_item_card.dart';

import '../widgets/profile_widget.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
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
