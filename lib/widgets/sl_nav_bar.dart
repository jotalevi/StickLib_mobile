import 'package:flutter/material.dart';
import 'package:stick_lib/classes/constants.dart';

class SlNavBar extends StatefulWidget {
  const SlNavBar({
    Key? key,
    required this.leftAct,
    required this.rightAct,
    required this.leftActHandle,
    required this.rightActHandle,
  }) : super(key: key);
  final String leftAct;
  final String rightAct;
  final Function leftActHandle;
  final Function rightActHandle;

  @override
  _SlNavBarState createState() => _SlNavBarState();
}

class _SlNavBarState extends State<SlNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: ColorsLight.ACCENTBACKDROP,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(
              5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    widget.leftActHandle();
                  },
                  child: Icon(
                    widget.leftAct == 'menu'
                        ? Icons.menu
                        : Icons.arrow_back_ios,
                    size: 38,
                    color: ColorsLight.PRIMARY
                        .withOpacity(widget.leftAct == 'none' ? 0 : 1),
                  ),
                ),
                const Text(
                  "StickLib",
                  style: TextStyle(
                    color: ColorsLight.PRIMARY,
                    fontSize: 36,
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.rightActHandle();
                  },
                  child: Icon(
                    widget.rightAct == 'profile' ? Icons.person : Icons.close,
                    size: 38,
                    color: ColorsLight.PRIMARY.withOpacity(
                      widget.rightAct == 'none' ? 0 : 1,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
