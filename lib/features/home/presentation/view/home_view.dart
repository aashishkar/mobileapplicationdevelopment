import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wise_academy/features/home/presentation/view_model/home_cubit.dart';
import 'package:wise_academy/features/home/presentation/view_model/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        return state.views.elementAt(state.selectedIndex);
      }),
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
              ),
            ],
            currentIndex: state.selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            onTap: (index) {
              context.read<HomeCubit>().onTabTapped(index);
            },
          );
        },
      ),
    );
  }
}
