// ignore_for_file: file_names, duplicate_ignore, camel_case_types

// ignore: file_names
import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  const calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, insex) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/146905108_1211831639547183_4053643437618714486_n.jpg?ccb=11-4&oh=01_AVxBl8itsOPGj_ONwABye5px1QvLgUFH1z1FruHOxZjCzg&oe=63439A31',
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Eslam Mahrous',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.call_received_rounded,
                            color: Colors.red,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Yasterday 3:10 PM',
                            style: TextStyle(
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               
                const Icon(Icons.call,
                color: Colors.green,),
              ],
            ),
          ),
      separatorBuilder: (context, index) => const SizedBox(
            height: 10.0,
          ),
      itemCount: 30);
}
