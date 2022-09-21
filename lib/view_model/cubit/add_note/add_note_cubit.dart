import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view_model/cubit/add_note/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteInitial());

  static AddNoteCubit get(context) => BlocProvider.of(context);


}