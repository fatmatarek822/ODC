import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view/components/core/core_components.dart';
import 'package:odc_project/view/pages/layout.dart';
import 'package:odc_project/view_model/cubit/section/section_cubit.dart';
import 'package:odc_project/view_model/cubit/section/section_state.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionCubit(),
      child: BlocConsumer<SectionCubit, SectionState>(
        listener: (context, state){},
        builder: (context, state){


          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                'Sections',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    navigateTo(context, LayoutScreen());
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.orange,
                  )),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.orange,
                    size: 27,
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                BuildCardLectures(
                  name: 'Flutter',
                  day: 'Wednesday',
                  hours: '2hrs',
                  StartTime: '12:00pm',
                  EndTime: '2:00pm',
                  DaySection: 'Lecture Day',
                ),
                BuildCardLectures(
                  name: 'React',
                  day: 'Thursday',
                  hours: '2hrs',
                  StartTime: '12:00pm',
                  EndTime: '2:00pm',
                  DaySection: 'Lecture Day',
                ),
                BuildCardLectures(
                  name: 'Vue',
                  day: 'Thursday',
                  hours: '2hrs',
                  StartTime: '2:00pm',
                  EndTime: '4:00pm',
                  DaySection: 'Lecture Day',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}