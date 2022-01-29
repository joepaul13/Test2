import 'art.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Event Collection Form';  
    return MaterialApp(  
      title: appTitle,  
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      title: Text("Event Collection Form"),
      centerTitle: true,
      ),
        body: MyCustomForm(),  
      ),  
    );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          SizedBox(height: 20),
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.school),  
              hintText: 'Enter College Name',  
              labelText: 'College Name',  
            ),  
          ),  
          SizedBox(height: 10),
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.event_available),  
              hintText: 'Technical / Cultural',  
              labelText: 'Event Genre',  
            ),  
          ),
          SizedBox(height: 10),
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.event),  
              hintText: 'Event Name',  
              labelText: 'Event',  
            ),  
          ), 
          SizedBox(height: 10),
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'dd-mm-yyyy',  
            labelText: 'Event Date',  
            ),  
           ),
           SizedBox(height: 10),
            TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.http),  
            hintText: 'https://',  
            labelText: 'Event Link',  
            ),  
           ),
           SizedBox(height: 20),
          new Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ArtPage())
                  );
                },
              ),
            ), 
        ],  
      ),  
    );  
  }  
}