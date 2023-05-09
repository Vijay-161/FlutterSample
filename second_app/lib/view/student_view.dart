import 'package:flutter/material.dart';

enum Gender { male, female }

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  Gender? _gender = Gender.male;
  String? gender;

  List lstItem = ["Kathmandu", "Janakpur", "Pokhara", "Dharan"];
  String? cityChoose;

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();

  var gap = const SizedBox(
    height: 10,
  );
  final studentKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: studentKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gap,
                TextFormField(
                  controller: fnameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                gap,
                TextFormField(
                  controller: lnameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                gap,
                TextFormField(
                  controller: ageController,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                gap,
                // RadioListTile(
                //   value: "Male",
                //   groupValue: gender,
                //   onChanged: (val) {
                //     setState(() {
                //       gender = val;
                //     });
                //   },
                //   title: const Text('Male'),
                // ),
                // RadioListTile(
                //   value: "Female",
                //   groupValue: gender,
                //   onChanged: (val) {
                //     setState(() {
                //       gender = val;
                //     });
                //   },
                //   title: const Text('Female'),
                // ),
                const Text('Select gender'),
                ListTile(
                  title: const Text('Male'),
                  leading: Radio(
                    value: Gender.male,
                    groupValue: _gender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Female'),
                  leading: Radio(
                    value: Gender.female,
                    groupValue: _gender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                TextFormField(
                  controller: addressController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                gap,
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: DropdownButton(
                    hint: const Text('Select City'),
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: cityChoose,
                    onChanged: (newValue) {
                      setState(() {
                        cityChoose = newValue as String?;
                      });
                    },
                    items: lstItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save Student'),
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Display Student'),
                  ),
                ),
                Text('$_gender ,$cityChoose,$gender'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
