import 'package:arrow_dating_app/blocs/swipe/swipe_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => const HomeScreen()),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (state is SwipeLoadedState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Draggable(
                    data: state.users,
                    feedback: UserCard(user: state.users[0]),
                    childWhenDragging: (state.users.length > 1)
                        ? UserCard(user: state.users[1])
                        : Container(),
                    onDragEnd: ((drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        context
                            .read<SwipeBloc>()
                            .add(SwipeLeftEvent(user: state.users[0]));
                        if (kDebugMode) {
                          print('Swiped left');
                        }
                      } else {
                        context
                            .read<SwipeBloc>()
                            .add(SwipeLeftEvent(user: state.users[0]));
                        if (kDebugMode) {
                          print('Swiped right');
                        }
                      }
                    }),
                    child: UserCard(user: state.users[0]),
                  ),

                  // Choises Buttons
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0.h,
                      horizontal: 50.0.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<SwipeBloc>()
                                .add(SwipeLeftEvent(user: state.users[0]));
                            if (kDebugMode) {
                              print('Swiped left');
                            }
                          },
                          child: ChoiseButton(
                            height: 60.r,
                            width: 60.r,
                            size: 25.r,
                            color: Theme.of(context).colorScheme.secondary,
                            hasGradient: false,
                            icon: Icons.clear_rounded,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context
                                .read<SwipeBloc>()
                                .add(SwipeLeftEvent(user: state.users[0]));
                            if (kDebugMode) {
                              print('Swiped right');
                            }
                          },
                          child: ChoiseButton(
                            height: 80.r,
                            width: 80.r,
                            size: 30.r,
                            color: Colors.white,
                            hasGradient: true,
                            icon: Icons.favorite,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ChoiseButton(
                            height: 60.r,
                            width: 60.r,
                            size: 25.r,
                            color: Theme.of(context).primaryColor,
                            hasGradient: false,
                            icon: Icons.watch_later,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Something went wrong!'),
            );
          }
        },
      ),
    );
  }
}
