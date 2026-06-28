import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver  implements BlocObserver{
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
debugPrint('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
   debugPrint('onClose -- ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
debugPrint('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    debugPrint('onDone -- ${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError -- ${bloc.runtimeType}, $error, $stackTrace');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    debugPrint('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    // TODO: implement onTransition
  }

}