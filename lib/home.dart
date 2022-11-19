import 'package:flutter/material.dart';
import 'package:job_app_ui/recent_jobs.dart';

import 'job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List jobList=[
    //companyName,jobType,jobTitle,icon,salary
    ["lib/icons/unilever.png","Full Time","UX/UI Designer",50],
    ["lib/icons/google.png","Part Time","Web Designer",60],
    ["lib/icons/microsoft.png","Full Time","Software Engineer",55],
    ["lib/icons/nike.png","Full Time","System Engineer",45],
  ];
  List recendJob=[
    //icon,jobName,companyname,salary
    ["lib/icons/apple-logo.png","Software Developer","Apple",75],
    ["lib/icons/samsung.png","System Administrator","Samsung",70],
    ["lib/icons/mcdonalds.png","Application Developer","MacDonalds",60],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //custom app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset("lib/icons/menu.png"),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //find your jobs
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "FInd Your Desired Job",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.black,width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: "Search a job",
                            hintStyle: TextStyle(fontSize: 18),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "lib/icons/settings.png",
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Text(
                "Choose One",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: jobList.length,
                  itemBuilder: (context, index) {
                    return JobCard(
                      icon: jobList[index][0],
                      jobType: jobList[index][1],
                      jobName: jobList[index][2],
                      salary: jobList[index][3],
                    );
                  }),
            ),

            SizedBox(height: 30,),
            //recent jobs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Recent Jobs",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),

            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                itemCount: recendJob.length,
                  itemBuilder: (context,index){
                return RecentJobs(
                  icon: recendJob[index][0],
                  jobName: recendJob[index][1],
                  companyName: recendJob[index][2],
                  salary: recendJob[index][3],
                );
              }),
            ))


          ],
        ),
      ),
    );
  }
}
