import 'package:flutter/material.dart';

class EditCVPage extends StatefulWidget {
  final Function(Map<String, String>) onSave;

  EditCVPage({
    required this.onSave,
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
  });

  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;

  @override
  _EditCVPageState createState() => _EditCVPageState();
}

class _EditCVPageState extends State<EditCVPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    // Initialize the text controllers with the initial values
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit CV"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: fullNameController,
                decoration: InputDecoration(labelText: "Fullname"),
              ),
              TextFormField(
                controller: slackUsernameController,
                decoration: InputDecoration(labelText: "Slack Username"),
              ),
              TextFormField(
                controller: githubHandleController,
                decoration: InputDecoration(labelText: "GitHub Handle"),
              ),
              TextFormField(
                controller: bioController,
                decoration: InputDecoration(labelText: "Bio"),
                maxLines: 7,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Create a map with the updated values
                  final updatedValues = {
                    'fullName': fullNameController.text,
                    'slackUsername': slackUsernameController.text,
                    'githubHandle': githubHandleController.text,
                    'bio': bioController.text,
                  };

                  widget.onSave(updatedValues);

                  Navigator.pop(context);
                },
                child: Text("Save Changes"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
