import 'package:flutter/material.dart';

import 'edit_cv_details.dart';

class CVPage extends StatefulWidget {
  @override
  _CVPageState createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  String fullName = "Osarobo Victor";
  String slackUsername = "Osarobo Victor";
  String githubHandle = "victormystery";
  String bio =
      "Results-driven Web developer with a keen eye for novel solutions. "
      "Excel at crafting user-focused websites & mobile apps."
      " Leverage HTML, CSS, Python, Django, Flutter, mobile dev."
      " Committed to flawless digital experiences. "
      "Strong understanding of UX, speed optimization, best practices.";

  List<Map<String, String>> workExperience = [
    {
      'position': 'FREELANCE WEB INSTRUCTOR',
      'employer': 'FLORENCE COURT INTERNATIONAL SCHOOL',
    },
    {
      'position': 'PHYSICS TEACHER',
      'employer': 'BAPTIST COMMUNITY HIGH SCHOOL ADO-EKITI, EKITI. [NYSC]',
    },
    {
      'position': 'FREELANCE DJANGO DEVELOPER',
    },
    {
      'position': 'ENGINEER INTERN',
      'employer': 'LAGOS STATE UNIVERSITY COLLEGE OF MEDICINE',
    },
  ];

  void updateCVDetails(Map<String, String> updatedValues) {
    setState(() {
      fullName = updatedValues['fullName']!;
      slackUsername = updatedValues['slackUsername']!;
      githubHandle = updatedValues['githubHandle']!;
      bio = updatedValues['bio']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My CV"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditCVPage(
                    onSave: updateCVDetails,
                    fullName: fullName,
                    slackUsername: slackUsername,
                    githubHandle: githubHandle,
                    bio: bio,
                  ),
                ),
              );
            },
            icon: Icon(Icons.edit),
            tooltip: "Edit CV",
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                shadowColor: Colors.black,
                color: Color.fromARGB(255, 182, 255, 114),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Full Name: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: fullName,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: "Slack Username: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: slackUsername,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: "GitHub Handle: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: githubHandle,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: "Bio:  ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: bio,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Professional Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 182, 255, 114),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10.0, left: 15, right: 15, top: 10),
                        child: Text(
                          "Work Experience",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      for (var experience in workExperience)
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 10.0, left: 15, right: 15),
                          child: Text(
                            "${experience['position']}",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 182, 255, 114),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 10.0, left: 15, right: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Licences & Certifications",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter & Dart - The Complete Guide\n[2023 Edition] - Udemy",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 182, 255, 114),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 10.0, left: 15, right: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SKILLS",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "CSS\nHTML\nLeadership\nDjango\nFlutter\nCommunication\nPhyton\nDart",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
