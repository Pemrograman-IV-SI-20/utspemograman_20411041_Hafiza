//import 'dart:js';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Screens/Login/LoginScreens.dart';
import 'package:toko_gitar_flutter/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/Components/dafault_button_custome_color.dart';
import 'package:toko_gitar_flutter/Utils/constans.dart';
import 'package:toko_gitar_flutter/size_config.dart';

class SignUpform extends StatefulWidget{
@override
 _SignUpform createState() => _SignUpform();
}
  @override 
  class _SignUpform extends State<SignUpform>{

    final _formkey = GlobalKey<FormState>();
    String?  namalengkap;
    String? username;
    String? email;
    String? password;
    bool? remeber =false;

    TextEditingController txtNamaLengkap = TextEditingController(),
                          txtUserName = TextEditingController(),
                          txtEmail = TextEditingController(),
                          txtPassword = TextEditingController();

    FocusNode focusNode = FocusNode();
  
  Widget build (BuildContext context){
    return Form(
      child: Column(
        children: [
        buildNamaLengkap(),
        SizedBox(height: getProportionateScreenHeight(30)),
         buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
         buildEmail(),
        SizedBox(height: getProportionateScreenHeight(30)),
         buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "Register",
          press: (){},
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
              onTap: () {
                 Navigator.pushNamed(context, LoginScreen.routeName);
               },
              child: Text(
                "Sudah Punya Akun ? Masuk Disini",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
        )
      ],
      ),
    );
  }
    TextFormField buildNamaLengkap(){
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
         labelText: 'UserNamaLengkap',
         hintText: 'Masukkan Nama Lengkap Anda',
         labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon
        (svgIcon: "assets/icons/User.svg")),
          );
  }
   TextFormField buildUserName(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true ,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
         labelText: 'Username',
         hintText: 'Masukkan Username Anda',
         labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(
        svgIcon: "assets/icons/User.svg",
        )),
        );
   }
   TextFormField buildEmail(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true ,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
         labelText: 'Email',
         hintText: 'Masukkan Email Anda',
         labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(
        svgIcon: "assets/icons/Mail.svg",
        )),
        );
   }
   TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true ,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
         labelText: 'Password',
         hintText: 'Masukkan Password Anda',
         labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(
        svgIcon: "assets/icons/Lock.svg",
        )),
        ); 
  }
}
  