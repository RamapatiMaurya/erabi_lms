import 'package:flutter/material.dart';

class TableOfContentsPage extends StatelessWidget {
  final List<List<String>> sections = [
    [
      "Two Dashboard (Admin, Accountant / Teacher)",
      "Student Enquiry",
      "Admission",
      "Transfer Certificate",
      "Character Certificate",
      "Discontinue Student List",
      "Class-wise List",
      "Bus-wise List",
      "Route-wise List",
      "Admit Card",
      "I-Card",
      "Gate Pass",
      "Student Form",
    ],
    [
      "DOB Certificate",
      "Sport Certificate",
      "Fee Plan",
      "Transport Plan",
      "Fee Discount",
      "Late Fee",
      "Fee Receipt",
      "Fee Due List",
      "Student Ledger",
      "Day Book",
      "Fee Defaulter",
      "Fee Summary",
      "Fee Chart",
      "Fee Delete List",
    ],
    [
      "Number Entry",
      "Grade Entry",
      "Mark-Sheet Printing",
      "Gazette Printing",
      "Exam Desk Slip",
      "Exam Attendance",
      "Seating Plan",
      "Student Attendance",
      "Add Ledger",
      "Purchase Item",
      "Purchase Return",
      "Cash Payment",
      "Cash Received",
    ],
    [
      "Bank Entry",
      "Cash Book",
      "Bank Book",
      "Payment Register",
      "Received Register",
      "Send Notification",
      "Add User",
      "Update User",
      "Set Permission",
      "School Profile",
      "Date Backup",
      "Change Session",
      "Bulk SMS",
      "Help",
      "Online Payment",
      "Biometric",
      "Mobile Apps",
      "Payment Register",
      "Barcode",
      "Hostel Management",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table of Contents'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int columns = constraints.maxWidth < 600
              ? 1
              : constraints.maxWidth < 900
              ? 2
              : constraints.maxWidth < 1200
              ? 3
              : 4;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.8,
              ),
              itemCount: sections.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey.shade100,
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Section ${index + 1}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: ListView.builder(
                            itemCount: sections[index].length,
                            itemBuilder: (context, itemIndex) {
                              return Text(
                                '\u2022 ${sections[index][itemIndex]}',
                                style: TextStyle(fontSize: 14),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
