import 'package:flutter/material.dart';

class CustomButtonWedget extends StatefulWidget {
  String? title;
  Color? backgroundColor;
  bool? isLoading;
  VoidCallback? onTab;

  CustomButtonWedget(
      {super.key,
      this.title = "",
      this.backgroundColor,
      this.isLoading = false,
      this.onTab});

  @override
  State<CustomButtonWedget> createState() => _CustomButtonWedgetState();
}

class _CustomButtonWedgetState extends State<CustomButtonWedget> {
  @override
  Widget build(BuildContext context) {
    return widget.isLoading == false
        ? Container(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: widget.onTab,
            child: Container(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: widget.backgroundColor ?? Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "${widget.title}",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          );
  }
}
