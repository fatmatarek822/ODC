import 'package:flutter/material.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.orange,
          size: 23,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Sections',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.filter_alt,
              color: Colors.orange,
              size: 28,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 107,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Flutter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 16,
                          ),
                          Text(
                            '2hrs',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Section Day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  Text(
                                    'Wednesday',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Start Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  Text(
                                    '12:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'End Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  Text(
                                    '2:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(
              height: 107,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'React',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 16,
                          ),
                          Text(
                            '2hrs',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Section Day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  Text(
                                    'Thursday',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Start Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  Text(
                                    '12:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'End Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  Text(
                                    '2:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(
              height: 107,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Vue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 16,
                          ),
                          Text(
                            '2hrs',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Section Day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  Text(
                                    'Thursday',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Start Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  Text(
                                    '2:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'End Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  Text(
                                    '4:00pm',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}