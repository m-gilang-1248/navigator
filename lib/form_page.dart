import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String selectedValue = 'Option 1';
  bool isSwitchOn = false;
  String selectedGender = "pria";
  bool isChecked = false;

  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  void dispose() {
    _controller.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Components'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField Section
            const Text(
              'Text Field',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                hintText: 'Type something...',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Dropdown Section
            const Text(
              'Dropdown',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: selectedValue,
                isExpanded: true,
                underline: Container(),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),

            // Switch Section
            const Text(
              'Switch',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Connect Instagram",
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: isSwitchOn,
                    activeColor: Colors.pink,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Radio Section
            const Text(
              'Radio Buttons',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text("Pria"),
                      value: "pria",
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          if (value != null) selectedGender = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text("Wanita"),
                      value: "wanita",
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          if (value != null) selectedGender = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Checkbox Section
            const Text(
              'Checkbox',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) isChecked = value;
                      });
                    },
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Setuju syarat dan ketentuan.",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // DatePicker Section
            const Text(
              'Date Picker',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100),
                  );
                  setState(() {
                    if (pickedDate != null) {
                      _dateController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    }
                  });
                },
                child: TextFormField(
                  controller: _dateController,
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "Tanggal Lahir",
                    labelStyle: const TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: const Icon(Icons.date_range),
                    helperText: "Pilih tanggal lahir anda",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // DIALOG ---
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text('Your order was placed.'),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Open Dialog'),
              ),
            ),

            // BOTTOM SHEET
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Your order was placed!'),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Open BottomSheet'),
              ),
            ),

            // SNACKBAR ---
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.blue,
                    content: Text('Your request is succesful'),
                  ),
                );
              },
              child: const Text('Open SnackBar'),
            ),

            // NAVIGATOR POP ---
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),

            // Summary Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Summary:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Name: ${_controller.text}'),
                  Text('Birth Date: ${_dateController.text}'),
                  Text('Selected Option: $selectedValue'),
                  Text('Instagram Connected: ${isSwitchOn ? "Yes" : "No"}'),
                  Text('Gender: $selectedGender'),
                  Text('Terms Accepted: ${isChecked ? "Yes" : "No"}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 