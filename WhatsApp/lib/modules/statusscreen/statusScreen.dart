// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class stauts extends StatelessWidget {
  const stauts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: const [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                            'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/293602775_1405545973283775_8780428552530331905_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qlNUmkzyGXYAX-p4Rwh&_nc_ht=scontent.fcai20-3.fna&oh=00_AT9cFhq_FZ-bzZxfId3DSFYhzxh4AoP-_OwcoX3643AirA&oe=63380709'),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40.0, 40.0, 0.0, 0.0),
                            child: CircleAvatar(
                              radius: 12.0,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My status',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Tap to add status update',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Recent updates',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, insex) => Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: const [
                                  CircleAvatar(
                                    radius: 35.0,
                                    backgroundColor: Colors.green,
                                  ),
                                  CircleAvatar(
                                    radius: 32.0,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: NetworkImage(
'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/293602775_1405545973283775_8780428552530331905_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qlNUmkzyGXYAX-p4Rwh&_nc_ht=scontent.fcai20-3.fna&oh=00_AT9cFhq_FZ-bzZxfId3DSFYhzxh4AoP-_OwcoX3643AirA&oe=63380709'                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Algzery',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Today 9:30 PM',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10.0,
                          ),
                      itemCount: 30),
                ],
              ),
            ),
            //statusPerson(),
          ],
        ),
      );
}
