import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'data.dart'; 

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();

  String _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this._formKey,      
      child: Column(
          children: <Widget>[ 
            TypeAheadFormField( 
              textFieldConfiguration: TextFieldConfiguration(
                textCapitalization: TextCapitalization.sentences,
                    textAlign: TextAlign.center,
                // decoration: InputDecoration(labelText: 'City'),
                controller: this._typeAheadController,
              ),
              suggestionsCallback: (pattern) {
                return CitiesService.getSuggestions(pattern);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  title: Text(suggestion),
                );
              },
              transitionBuilder: (context, suggestionsBox, controller) {
                return suggestionsBox;
              },
              onSuggestionSelected: (suggestion) {
                this._typeAheadController.text = suggestion;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please select a ZinCode';
                }
              },
              onSaved: (value) => this._selectedCity = value,
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // RaisedButton(
            //   child: Text('Submit'),
            //   onPressed: () {
            //     if (this._formKey.currentState.validate()) {
            //       this._formKey.currentState.save();
            //       Scaffold.of(context).showSnackBar(SnackBar(
            //           content:
            //           Text('Your Favorite City is ${this._selectedCity}')));
            //     }
            //   },
            // )
          ],
        
      ),
    );
  }
}
 