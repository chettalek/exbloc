part of 'data_bloc.dart';

@immutable
abstract class DataState extends Equatable {
  const DataState();

  @override
  List<Object?> get props => [];
}

class DataInitial extends DataState {}

class DataLoading extends DataState {}

class DataError extends DataState {
  final String? message;
  const DataError(this.message);
}

class DataLoaded extends DataState {
  final List<Datamodel> dataModel;
  const DataLoaded(this.dataModel);
}
