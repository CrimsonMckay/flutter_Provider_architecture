import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_provider/core/viewmodels/login_model.dart';
import 'package:stacked_architecture_provider/ui/views/shared/app_colors.dart';
import 'package:stacked_architecture_provider/ui/views/widgets/login_header.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginModel>.reactive(
      builder:(context,model,child)=>Scaffold(
        backgroundColor:backgroundColor,
        body: Column(
          children:<Widget> [
            LoginHeader(controller: _controller,validationMessage: 'enter a valid id ',),
            TextButton(onPressed:(){

            },

                child: Text(
                  'Login',style: TextStyle(color: Colors.black),
                ))

          ],
        ),

      ),

      viewModelBuilder: () =>LoginModel(),


    );
  }
}
