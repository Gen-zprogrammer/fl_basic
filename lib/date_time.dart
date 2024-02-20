import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTime_DateFormat extends StatefulWidget {
  const DateTime_DateFormat({super.key});

  @override
  State<DateTime_DateFormat> createState() => _DateTime_DateFormatState();
}

class _DateTime_DateFormatState extends State<DateTime_DateFormat> {
  // var dateTime;
  // var anotherDateTime;
  var selectDate;

  @override
  void initState() {
    super.initState();
    // dateTime = DateTime.now();
    // anotherDateTime = DateFormat('yyyy-MM-dd').format(dateTime);
    selectDate = DateTime.now();
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2024));

    if (picked != null && picked != selectDate)
      setState(() {
        selectDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateTime"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${DateFormat('yyyy-MM-dd').format(selectDate)}"),
            ElevatedButton(onPressed: () {
              _selectDate(context);
            }, child: Text('Select Date'))
          ],
        ),
      ),
    );
  }
}
