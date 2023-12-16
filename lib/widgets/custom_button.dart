
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onTap,this.isLoading = false,});
final void Function()?onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
            child: isLoading?
            Container(
              height: 24,
                width: 24,
                color: Colors.black,
                child: const CircularProgressIndicator(),):
            const Text(
              "Add",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
        ),
      ),
    );
  }
}
