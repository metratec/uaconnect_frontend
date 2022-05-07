import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar.dart';

class NavBarItem extends StatefulWidget {
  final String text;

  NavBarItem({
    required this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
          fontWeight = selectedFW;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
          fontWeight = notSelectedFW;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 50.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontFamily: "IBM Plex",
                fontWeight: fontWeight,
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({
    required this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xcfffffff),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            EvaIcons.moreVerticalOutline,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
