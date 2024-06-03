import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text('Vendyan\'s Report'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/boy.png'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1 April 2024',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              _buildInfoTable('Arrival', '09:21 am'),
              _buildInfoTable('Body Temperature', '36°C'),
              _buildInfoTable('Condition', 'Good'),
              _buildMealsTable(),
              _buildToiletTable(),
              _buildInfoTable('Rest', '12:59 pm - 13:57 pm'),
              _buildBottleTable(),
              _buildShowerTable(),
              _buildInfoTable('Vitamin', 'None'),
              _buildInfoTable('Items Needed', 'Clothes, Diapers'),
              _buildInfoTable('Notes for My Parents', 'None'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTable(String title, String content) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(content),
      ),
    );
  }

  Widget _buildMealsTable() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Meals'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Text('Type', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Food', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Quantity', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Breakfast'),
                    Text('None'),
                    Text('None'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Snack'),
                    Text('Pisang, Susu'),
                    Text('Lots'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Lunch'),
                    Text('Nasi, Bola-bola Tahu, Telur Rebus'),
                    Text('Some'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Dinner'),
                    Text('Nasi, Pempek'),
                    Text('Lots'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Fluids'),
                    Text('Air Putih, Susu'),
                    Text('Lots'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Other'),
                    Text('None'),
                    Text('None'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToiletTable() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Toilet'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Type', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Dry/Wet/BM', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                TableRow(
                  children: [
                    Text('11:37 am'),
                    Text('Diaper'),
                    Text('Wet'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('14:08 pm'),
                    Text('Diaper'),
                    Text('Wet'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottleTable() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Bottle'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('ML', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Bottle Type', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                TableRow(
                  children: [
                    Text('09:48 am'),
                    Text('1 kotak'),
                    Text('Milk'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('12:08 pm'),
                    Text('1 kotak'),
                    Text('Milk'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShowerTable() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Shower'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Text('Morning', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Afternoon', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                TableRow(
                  children: [
                    Text('None'),
                    Text('14:08 pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
