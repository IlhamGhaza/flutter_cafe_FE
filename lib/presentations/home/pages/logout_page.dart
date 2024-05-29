import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/data/models/response/auth_response_model.dart';
import 'package:flutter_cafe/presentations/auth/bloc/login_page.dart';
import 'package:flutter_cafe/presentations/auth/bloc/logout/logout_bloc.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  User? user;

  @override
  void initState() {
    AuthLocalDataSource().getAuthData().then((value) {
      setState(() {
        user = value.user;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Welcome to Dashboard'),
            Text('Name: ${user?.name ?? ''}'),
            const SizedBox(
              height: 100,
            ),
            BlocListener<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  error: (e) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message)));
                  },
                  success: (value) {
                    AuthLocalDataSource().removeAuthData();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Logout Success'),
                      backgroundColor: AppColors.primary,
                    ));

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                );
              },
              child: ElevatedButton(
                  onPressed: () {
                    context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  },
                  child: const Text('Logout')),
            )
          ],
        ),
      ),
    );
  }
}
