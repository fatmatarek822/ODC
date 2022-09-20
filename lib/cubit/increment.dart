import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/cubit/cubit.dart';
import 'package:odc_project/cubit/state.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {

          HomeCubit cubit = HomeCubit.get(context);

          return  Scaffold(
            body: Column(
              children: [
                SizedBox(height: 100,),
                Text(cubit.count.toString()),
                ElevatedButton(onPressed: ()
                {
                  cubit.IncrementProcess();
                }, child: Text('Increment'),),

                ElevatedButton(onPressed: ()
                {
                  cubit.DecrementProcess();
                }, child: Text('Decrement'),),

                Center(
                  child: AnimatedContainer(
                    width: cubit.selected ? 200.0 : 100.0,
                    height: cubit.selected ? 100.0 : 200.0,
                    color: cubit.selected ? Colors.orange : Colors.orange,
                    alignment:
                    cubit.selected ? Alignment.center : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: Container(),
                  ),
                ),
                ElevatedButton(
                  onPressed: ()
                  {
                    cubit.clicked();
                  }, child: Text('change'),
                ),
              ],
            ),
          );
        },

      ),

    );
  }
}
