import 'package:flutter/material.dart';

class DatePickePage extends StatefulWidget {
  const DatePickePage({Key? key}) : super(key: key);

  @override
  State<DatePickePage> createState() => _DatePickePageState();
}

class _DatePickePageState extends State<DatePickePage> {
  @override
  Widget build(BuildContext context) {
    DateTime _date = DateTime(2020, 11, 17);

    void _selectDate() async {
      final DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2017, 1),
        lastDate: DateTime(2022, 7),
        helpText: 'Select a date',
      );
      if (newDate != null) {
        setState(() {
          _date = newDate;
        });
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _selectDate,
              child: const Text('SELECT DATE'),
            ),
            const SizedBox(height: 8),
            Text(
              'Selected date: $_date',
            ),
          ],
        ),
      ),
    );
  }
}
