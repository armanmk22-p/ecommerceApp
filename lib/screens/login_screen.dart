

import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/authentication/auth_bloc.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _usernameTextController = TextEditingController(text: 'armamk2009');
  final _passwordTextController = TextEditingController(text: '62286258');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon_application.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'App Shop',
                  style: TextStyle(
                      fontSize: 24, color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _usernameTextController,
                    decoration: const InputDecoration(
                      labelText: 'userName',
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide:
                        BorderSide(color: AppColors.blue, width: 3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _passwordTextController,
                    decoration: const InputDecoration(
                      labelText: 'password',
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide:
                        BorderSide(color: AppColors.blue, width: 3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // BlocBuilder<AuthBloc, AuthState>(
                  //     builder: ((context, state) {
                  //       if (state is AuthInitiateState) {
                  //         return
                ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle:
                                TextStyle(fontSize: 18),
                                minimumSize: Size(200, 48),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              BlocProvider.of<AuthBloc>(context).add(
                                  AuthLoginRequest(_usernameTextController.text,
                                      _passwordTextController.text));
                            },
                            child: Text('login to account'),
                          // );
                        // }
                  //
                  //       if (state is AuthLoadingState) {
                  //         return CircularProgressIndicator();
                  //       }
                  //
                  //       if (state is AuthResponseState) {
                  //         Text widget = Text('');
                  //         state.reponse.fold((l) {
                  //           widget = Text(l);
                  //         }, (r) {
                  //           widget = Text(r);
                  //         });
                  //         return widget;
                  //       }
                  //       return Text('someThing went wrong !');
                  //     })),
                )],
              ),
            ),
          )
        ],
      ),
    );
  }
}
