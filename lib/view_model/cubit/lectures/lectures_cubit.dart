import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view_model/cubit/lectures/lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState>{
  LecturesCubit() : super(LecturesInitial());

  static LecturesCubit get(context) => BlocProvider.of(context);


}