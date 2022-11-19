import 'package:flutter/material.dart';

class RecentJobs extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String icon;
  final int salary;
  const RecentJobs({Key? key, required this.companyName, required this.jobName, required this.icon, required this.salary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white,width: 0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 60,
              child: Image.asset(icon),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                Text(companyName,style: TextStyle(fontSize: 16),)
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Text('\$'+salary.toString()+'\/h',style: TextStyle(fontSize: 17,color: Colors.white70),),
            )
          ],
        ),
      ),
    );
  }
}
