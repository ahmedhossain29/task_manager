import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/add_new_task_screen.dart';

import '../widgets/profile_widget.dart';
import '../widgets/summary_card_widget.dart';
import '../widgets/task_item_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen(),),);
      },child: const Icon(Icons.add),),
        body: SafeArea(
          child: Column(
            children: [
              const ProfileWidget(),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: Row(children: [
                    SummaryCard(count: '9', title: 'New',),
                    SummaryCard(count: '9', title: 'In Progress',),
                    SummaryCard(count: '9', title: 'Completed',),
                    SummaryCard(count: '9', title: 'Cancelled',),

                  ],),
                ),
              ),
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



