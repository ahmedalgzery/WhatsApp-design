import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screens/modules/callscreen/callSceern.dart';
import 'package:screens/modules/chatscreen/chatScreen.dart';
import 'package:screens/modules/statusscreen/statusScreen.dart';
import 'package:screens/shared/cubite/state.dart';

// ignore: camel_case_types
class whatsappcubit extends Cubit<whatsAppState> {
  whatsappcubit() : super(intialWhatsAppState());
  static whatsappcubit get(context) => BlocProvider.of(context);
  int indexScreen = 1;
  List fabicon = [
    const Icon(
      Icons.chat_rounded,
    ),
    const Icon(
      Icons.camera_alt_rounded,
    ),
    const Icon(
      Icons.add_ic_call_rounded
    ),
  ];
  List screens = [
    //const mycamera(mycameras: [],),
    const chats(),
    const stauts(),
    const calls(),
  ];

  void changScreen(index) {
    if (index == 0) {
      indexScreen = index;
      emit(cameraWhatsAppState());
    } else if (index == 1) {
      indexScreen = index;
      emit(chatWhatsAppState());
    } else if (index == 2) {
      indexScreen = index;
      emit(statusWhatsAppState());
    } else if (index == 3) {
      indexScreen = index;
      emit(callsWhatsAppState());
    }
  }
}
