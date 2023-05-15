import 'package:country/domain/core/error/api_failures.dart';
import 'package:flutter/material.dart';

class ErrorUtils {
  static handleApiFailure(BuildContext context, ApiFailure failure) {
    if(failure==const ApiFailure.poorConnection()){
      ScaffoldMessenger.of(context).showSnackBar(
        snackBar(failure.failureMessage,context));
    }
    else if(failure==const ApiFailure.serverTimeout()){
       ScaffoldMessenger.of(context).showSnackBar(
        snackBar(failure.failureMessage,context));
    }
    else{
       ScaffoldMessenger.of(context).showSnackBar(
        snackBar('Unable to get Data because of incorrect query or input',context));
    }
  }

  static SnackBar snackBar(String text,BuildContext context){
    return SnackBar(
      content:  Text(text,style:const TextStyle(fontWeight: FontWeight.w600),),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
  }
}


