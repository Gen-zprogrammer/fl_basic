import 'package:flutter/material.dart';

class DropDown_CheckBox extends StatefulWidget {
  const DropDown_CheckBox({super.key});

  @override
  State<DropDown_CheckBox> createState() => _DropDown_CheckBoxState();
}

class _DropDown_CheckBoxState extends State<DropDown_CheckBox> {
  var selectted = 'One';
  final dropdownList = <String>['One', 'Two', 'Tree'];
  var isChecked = false;
  var gender = 'male';
  var isOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: isOn,
                onChanged: (bool? val) {
                  if (val != null)
                    setState(() {
                      isOn = val;
                    });
                }),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RadioListTile(
                        subtitle: Text('You gender is male'),
                        title: Text('Male'),
                        value: 'male',
                        groupValue: gender,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) gender = val;
                          });
                        }),
                  ],
                ),
              ],
            ),
            RadioListTile(
                title: Text('female'),
                value: 'female',
                groupValue: gender,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) gender = val;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    if (val != null) isChecked = val;
                  });
                }),
            DropdownButton(
              value: selectted,
              icon: Icon(
                Icons.arrow_circle_down_outlined,
              ),
              underline: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
              ),
              items: dropdownList
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  selectted = val!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
