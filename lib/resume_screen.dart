import 'package:flutter/material.dart';
class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                /// self info
                Column(
                  children: [
                  Text("Vansh Parashar",style: TextStyle(fontSize: 20),),
                  Text("Faridabad,Haryana"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("9528291900"),
                    Text("ivanshparashar@gmail.com"),
                    Text("Linkedin profile"),
                  ],),
                  ],),
                /// Summary
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Summary",style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),),
                      Divider(height: 1,color: Colors.black,),
                      Text("Empowering Software Engineers with YouTube + Coaching Courses for Career Roadmapping | ex-19th Engineer@WhatsApp and Engineering Manager@Meta | Author | #EngineeringLeadership, #CareerGrowth", textAlign: TextAlign.center,)
                    ],
                  ),
                ),
                
                Column(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },child: Icon(Icons.add),),
      ),
    );
  }
}
