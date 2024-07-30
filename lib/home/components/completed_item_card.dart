import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo_assignment/model/task.dart';
import 'package:todo_assignment/state.dart';

class CompletedItemCard extends StatelessWidget {
  final Task completedTask;
  final onDelete;

  const CompletedItemCard(
      {super.key, required this.completedTask, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);

    return Container(
      color: appState.appTheme == AppTheme.LIGHT
          ? Colors.white
          : const Color(0xff44446B),
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 56.w),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // TODO
            },
            icon: const Icon(
              Icons.check_box_outlined,
              color: Colors.green,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                completedTask.title,
                style: TextStyle(
                    color: appState.appTheme == AppTheme.LIGHT
                        ? Colors.black
                        : Colors.white,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.sp),
              ),
              Text(
                '${completedTask.startTime} - ${completedTask.startDate}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 36.sp),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
