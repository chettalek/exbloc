import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exbloc/models/data_model.dart';
import 'package:exbloc/resources/api.dart';
import 'package:meta/meta.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial()) {
    on<GetDataList>((event, emit) async {
      // try {
        emit(DataLoading());
        final mList = await fetchDataList();
        print(mList);
        emit(DataLoaded(mList));
        // if (mList.error != null) {
        //   emit(DataError(mList.error));
        // }
      // } catch (e) {
      //   emit(DataError("Failed to fetch data. is your device online?"));
      //   print(e);
      // }
      // TODO: implement event handler
    });
  }
}
