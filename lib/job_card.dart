import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String icon;
  final String jobType;
  final String jobName;
  final int salary;

  const JobCard(
      {Key? key,
      required this.icon,
      required this.jobType,
      required this.jobName,
      required this.salary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 250,
          padding: EdgeInsets.all(12),
          color: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(icon),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Text(jobType,style: TextStyle(fontSize: 15,color: Colors.white70, fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(jobName,style: TextStyle(fontSize: 24,color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('\$'+ salary.toString()+'\/h',style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
