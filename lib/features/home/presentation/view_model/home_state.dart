import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wise_academy/features/home/presentation/view/bottom_view/dashboard_page_view.dart';

import '../../../../app/di/di.dart';
import 'home_cubit.dart';

class HomeState extends Equatable {
  final int selectedIndex;
  final List<Widget> views;

  const HomeState({
    required this.selectedIndex,
    required this.views,
  });

  // Initial state
  static HomeState initial() {
    return HomeState(
      selectedIndex: 0,
      views: [
        BlocProvider(
          create: (context) => getIt<HomeCubit>(),
          child: DashboardPageView(),
        ),
        const Center(
          child: Text('Wishlist'),
        ),
        const Center(child: Text('Cart')),
        const Center(
          child: Text('Inbox'),
        ),
        const Center(
          child: Text('Account'),
        ),
      ],
    );
  }

  HomeState copyWith({
    int? selectedIndex,
    List<Widget>? views,
  }) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      views: views ?? this.views,
    );
  }

  @override
  List<Object?> get props => [selectedIndex, views];
}
