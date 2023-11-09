import 'package:flutter/material.dart';

import '../widgets/profile_widget.dart';
import '../widgets/task_item_card.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const ProfileWidget(),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return  const TaskItemCard();
                    },),
              ),

            ],
          ),
        ),
    );
  }
}
//