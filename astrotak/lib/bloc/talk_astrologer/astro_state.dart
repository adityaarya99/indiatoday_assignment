part of 'astrologer_bloc.dart';

abstract class AstroState{
  List<AstroModel>? entries;
  AstroState({this.entries});
}

class AstroInitial extends AstroState {}

class AstroLoaded extends AstroState {
  AstroLoaded(entries) : super(entries: entries);
}