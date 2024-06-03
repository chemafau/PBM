import 'package:flutter/material.dart';

class SitterInputDataPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController arrivalTimeController = TextEditingController();
  final TextEditingController temperatureController = TextEditingController();
  final TextEditingController conditionController = TextEditingController();
  final TextEditingController breakfastController = TextEditingController();
  final TextEditingController snackController = TextEditingController();
  final TextEditingController lunchController = TextEditingController();
  final TextEditingController dinnerController = TextEditingController();
  final TextEditingController fluidsController = TextEditingController();
  final TextEditingController toiletActivityController = TextEditingController();
  final TextEditingController startRestController = TextEditingController();
  final TextEditingController restActivityController = TextEditingController();
  final TextEditingController morningShowerController = TextEditingController();
  final TextEditingController afternoonShowerController = TextEditingController();
  final TextEditingController vitaminController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController itemsNeededController = TextEditingController();

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
                decoration: InputDecoration(labelText: 'Date', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: arrivalTimeController,
                decoration: InputDecoration(labelText: 'Arrival', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: temperatureController,
                decoration: InputDecoration(labelText: 'Body Temperature', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: conditionController,
                decoration: InputDecoration(labelText: 'Conditions', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Text(
                'Meals',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double tableWidth = constraints.maxWidth;
                  return Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(tableWidth * 0.3),
                      1: FixedColumnWidth(tableWidth * 0.35),
                      2: FixedColumnWidth(tableWidth * 0.35),
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('TYPE', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('FOOD', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('QUANTITY', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Breakfast'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: breakfastController,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Snack'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: snackController,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Lunch'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: lunchController,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Dinner'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: dinnerController,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Fluids'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: fluidsController,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Other'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('None'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Some'),
                              Checkbox(value: false, onChanged: (value) {}),
                              Text('Lots'),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Toilet',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double tableWidth = constraints.maxWidth;
                  return Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(tableWidth * 0.25),
                      1: FixedColumnWidth(tableWidth * 0.25),
                      2: FixedColumnWidth(tableWidth * 0.25),
                      3: FixedColumnWidth(tableWidth * 0.25),
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('TIME', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('TIPE', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('DRY/WET/BM', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('NOTES', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Diaper'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Potty'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Dry'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Wet'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('BM'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ]),
                    ],
                  );
                },
              ),
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
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double tableWidth = constraints.maxWidth;
                  return Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(tableWidth * 0.33),
                      1: FixedColumnWidth(tableWidth * 0.33),
                      2: FixedColumnWidth(tableWidth * 0.34),
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('TIME', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('ML', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('BOTTLE TYPE', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Breast'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Formula'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text('Milk'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  );
                },
              ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Diapers'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Towel'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Hand Towel'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Soap & Shampoo'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Cream'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Milk'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Clothes'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Toothpaste'),
                    ],
                  ),
                ],
              ),
              // Other Item TextField
              TextField(
                controller: itemsNeededController,
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
}