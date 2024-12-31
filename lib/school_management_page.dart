import 'package:flutter/material.dart';


class ManageSchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final List<String> sections = [
      'Student details',
      'Student Type',
      'Teacher Info',
      'Academic details',
      'Administration',
      'Library Management',
      'Financial Management',
      'All Reports'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text('Student Management Tool'),
        ),
        Expanded(
          // Make better use of wide windows with a grid.
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 400 / 80,
            ),
            children: [
              for (var item in sections)
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.delete_outline, semanticLabel: 'Delete'),
                    color: theme.colorScheme.primary,
                    onPressed: () {
                      print(item);
                    },
                  ),
                  title: Text(
                    item,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
