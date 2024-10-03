import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const ExampleState());
}
