// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screens/shared/cubite/cubite.dart';
import 'package:screens/shared/cubite/state.dart';
import 'package:screens/shared/style/colors.dart';

// ignore: camel_case_types
class whatsApp extends StatelessWidget {
  const whatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => whatsappcubit(),
      child: BlocConsumer<whatsappcubit, whatsAppState>(
          listener: (context, state) {},
          builder: (context, state) {
            whatsappcubit cubit = whatsappcubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: const Expanded(
                  child: Text(
                    'WhatsApp',
                  ),
                ),
                actions: [
                   IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_alt_1_rounded,
                      ),
                    ),
                  
                 IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.network_wifi,
                      ),
                    ),
                  
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.sunny,
                      ),
                    ),
                  
                   IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                      ),
                    ),
                  
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded),
                    ),
                  
                ],
                elevation: 0.0,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: maincolor,
                      width: double.infinity,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                whatsappcubit.get(context).changScreen(1);
                              },
                              child: const Text(
                                'CHATS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                whatsappcubit.get(context).changScreen(2);
                              },
                              child: const Text(
                                'STATUS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                whatsappcubit.get(context).changScreen(3);
                              },
                              child: const Text(
                                'CALLS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    cubit.screens[cubit.indexScreen-1 ],
                  ],
                ),
              ),
              floatingActionButton: IconButton(
                iconSize: 50.0,
                color: const Color.fromARGB(255, 32, 197, 117),
                icon: cubit.fabicon[cubit.indexScreen-1 ],
                onPressed: () {},
              ),
            );
          }),
    );
  }
}
