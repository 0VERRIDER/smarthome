import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton(
      {Key? key,
      this.icon,
      required this.left,
      required this.right,
      this.onTap})
      : super(key: key);

  final IconData? icon;
  final double left;
  final double right;
  final void Function()? onTap;
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
          margin: EdgeInsets.only(left: widget.left, right: widget.right),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(12, 14, 19, 0.5),
                    blurRadius: 10,
                    offset: Offset(0, 0))
              ],
              color: const Color.fromRGBO(42, 45, 54, 1)),
          child: Icon(
            widget.icon,
            color: Colors.white,
          )),
    );
  }
}
