import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SitterInputDataPage extends StatefulWidget {
  @override
  _SitterInputDataPageState createState() => _SitterInputDataPageState();
}

class _SitterInputDataPageState extends State<SitterInputDataPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController arrivalTimeController = TextEditingController();
  final TextEditingController temperatureController = TextEditingController();
  final TextEditingController conditionsController = TextEditingController();
  final TextEditingController breakfastController = TextEditingController();
  final TextEditingController snackController = TextEditingController();
  final TextEditingController lunchController = TextEditingController();
  final TextEditingController dinnerController = TextEditingController();
  final TextEditingController fluidsController = TextEditingController();
  final TextEditingController otherController = TextEditingController();
  final TextEditingController toiletTime1Controller = TextEditingController();
  final TextEditingController toiletTime2Controller = TextEditingController();
  final TextEditingController ml1Controller = TextEditingController();
  final TextEditingController ml2Controller = TextEditingController();
  final TextEditingController startRestController = TextEditingController();
  final TextEditingController restActivityController = TextEditingController();
  final TextEditingController morningShowerController = TextEditingController();
  final TextEditingController afternoonShowerController = TextEditingController();
  final TextEditingController vitaminController = TextEditingController();
  final TextEditingController itemsController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController bottleTime1Controller = TextEditingController();
  final TextEditingController bottleTime2Controller = TextEditingController();

  String? selectedBreakfastQuantity;
  String? selectedSnackQuantity;
  String? selectedLunchQuantity;
  String? selectedDinnerQuantity;
  String? selectedFluidsQuantity;
  String? selectedOtherQuantity;

  String? selectedToiletType1;
  String? selectedToiletType2;
  String? selectedToiletCondition1;
  String? selectedToiletCondition2;

  String? selectedBottleType1;
  String? selectedBottleType2;

  bool diapersChecked = false;
  bool towelChecked = false;
  bool handTowelChecked = false;
  bool soapShampooChecked = false;
  bool creamChecked = false;
  bool milkChecked = false;
  bool clothesChecked = false;
  bool toothpasteChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text('Input Child Data'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Child Name', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: dateController,
                decoration: const InputDecoration(
                  labelText: 'Enter Date',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      dateController.text = formattedDate;
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
              TextField(
                controller: arrivalTimeController,
                decoration: const InputDecoration(
                  labelText: 'Arrival',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                readOnly: true,
                onTap: () async {
                  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);
                  TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: _time,
                    initialEntryMode: TimePickerEntryMode.input,
                  );
                  if (newTime != null) {
                    setState(() {
                      _time = newTime;
                      final hours = _time.hour.toString().padLeft(2, '0');
                      final minutes = _time.minute.toString().padLeft(2, '0');
                      arrivalTimeController.text = '$hours:$minutes';
                    });
                  } else {
                    print("Arrival time is not selected");
                  }
                },
              ),
              TextField(
                controller: temperatureController,
                decoration: InputDecoration(labelText: 'Body Temperature', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: conditionsController,
                decoration: InputDecoration(labelText: 'Conditions', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Text(
                'Meals',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              _buildMealTextField('Breakfast', breakfastController, selectedBreakfastQuantity, (newValue) {
                setState(() {
                  selectedBreakfastQuantity = newValue;
                });
              }),
              _buildMealTextField('Snack', snackController, selectedSnackQuantity, (newValue) {
                setState(() {
                  selectedSnackQuantity = newValue;
                });
              }),
              _buildMealTextField('Lunch', lunchController, selectedLunchQuantity, (newValue) {
                setState(() {
                  selectedLunchQuantity = newValue;
                });
              }),
              _buildMealTextField('Dinner', dinnerController, selectedDinnerQuantity, (newValue) {
                setState(() {
                  selectedDinnerQuantity = newValue;
                });
              }),
              _buildMealTextField('Fluids', fluidsController, selectedFluidsQuantity, (newValue) {
                setState(() {
                  selectedFluidsQuantity = newValue;
                });
              }),
              _buildMealTextField('Other', otherController, selectedOtherQuantity, (newValue) {
                setState(() {
                  selectedOtherQuantity = newValue;
                });
              }),

              SizedBox(height: 20),
              Text(
                'Toilet',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              _buildToiletRow(),
              SizedBox(height: 20),
              Text(
                'Rest Activity',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: startRestController,
                decoration: InputDecoration(labelText: 'Start'),
              ),
              TextField(
                controller: restActivityController,
                decoration: InputDecoration(labelText: 'Rest'),
              ),
              SizedBox(height: 20),
              Text(
                'Bottle',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              _buildBottleRow(),
              SizedBox(height: 20),
              Text(
                'Shower',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: morningShowerController,
                decoration: InputDecoration(labelText: 'Morning'),
              ),
              TextField(
                controller: afternoonShowerController,
                decoration: InputDecoration(labelText: 'Afternoon'),
              ),
              TextField(
                controller: vitaminController,
                decoration: InputDecoration(labelText: 'Vitamin', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Text(
                'Items Needed',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              _buildItemsNeeded(),
              TextField(
                controller: itemsController,
                decoration: InputDecoration(labelText: 'Other'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: notesController,
                decoration: InputDecoration(
                  labelText: 'Notes for My Parents',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/activity');
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMealTextField(String type, TextEditingController controller, String? selectedValue, void Function(String?) onChanged) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: controller,
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quantity',
              ),
              DropdownButton<String>(
                isExpanded: true,
                value: selectedValue,
                onChanged: onChanged,
                items: ['None', 'Some', 'Lots'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildToiletRow() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                controller: toiletTime1Controller,
                decoration: InputDecoration(labelText: 'Time 1'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedToiletType1 = newValue;
                      });
                    },
                    value: selectedToiletType1,
                    items: ['Diaper', 'Potty'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Condition'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedToiletCondition1 = newValue;
                      });
                    },
                    value: selectedToiletCondition1,
                    items: ['Dry', 'Wet', 'BM'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                controller: toiletTime2Controller,
                decoration: InputDecoration(labelText: 'Time 2'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedToiletType2 = newValue;
                      });
                    },
                    value: selectedToiletType2,
                    items: ['Diaper', 'Potty'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Condition'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedToiletCondition2 = newValue;
                      });
                    },
                    value: selectedToiletCondition2,
                    items: ['Dry', 'Wet', 'BM'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottleRow() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                controller: bottleTime1Controller,
                decoration: InputDecoration(labelText: 'Time 1'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: TextField(
                controller: ml1Controller,
                decoration: InputDecoration(labelText: 'ML'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bottle Type'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedBottleType1 = newValue;
                      });
                    },
                    value: selectedBottleType1,
                    items: ['Breast', 'Formula', 'Milk'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                controller: bottleTime2Controller,
                decoration: InputDecoration(labelText: 'Time 2'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: TextField(
                controller: ml2Controller,
                decoration: InputDecoration(labelText: 'ML'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bottle Type'),
                  DropdownButton<String>(
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        selectedBottleType2 = newValue;
                      });
                    },
                    value: selectedBottleType2,
                    items: ['Breast', 'Formula', 'Milk'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildItemsNeeded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: diapersChecked,
              onChanged: (value) {
                setState(() {
                  diapersChecked = value!;
                });
              },
            ),
            Text('Diapers'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: towelChecked,
              onChanged: (value) {
                setState(() {
                  towelChecked = value!;
                });
              },
            ),
            Text('Towel'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: handTowelChecked,
              onChanged: (value) {
                setState(() {
                  handTowelChecked = value!;
                });
              },
            ),
            Text('Hand Towel'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: soapShampooChecked,
              onChanged: (value) {
                setState(() {
                  soapShampooChecked = value!;
                });
              },
            ),
            Text('Soap & Shampoo'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: creamChecked,
              onChanged: (value) {
                setState(() {
                  creamChecked = value!;
                });
              },
            ),
            Text('Cream'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: milkChecked,
              onChanged: (value) {
                setState(() {
                  milkChecked = value!;
                });
              },
            ),
            Text('Milk'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: clothesChecked,
              onChanged: (value) {
                setState(() {
                  clothesChecked = value!;
                });
              },
            ),
            Text('Clothes'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: toothpasteChecked,
              onChanged: (value) {
                setState(() {
                  toothpasteChecked = value!;
                });
              },
            ),
            Text('Toothpaste'),
          ],
        ),
      ],
    );
  }
}