import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stick_lib/classes/constants.dart';

class SlSessionEnterWidget extends StatefulWidget {
  const SlSessionEnterWidget({
    Key? key,
    required this.switchActMode,
  }) : super(key: key);
  final Function switchActMode;

  @override
  _SlSessionEnterWidgetState createState() => _SlSessionEnterWidgetState();
}

class _SlSessionEnterWidgetState extends State<SlSessionEnterWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hello",
            style: TextStyle(
              color: ColorsLight.PRIMARY,
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
          ),
          const Text(
            "I'm glad you're back!",
            style: TextStyle(
              color: ColorsLight.PRIMARY,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
          ),
          Container(
            //TEXT INPUT
            decoration: BoxDecoration(
              color: ColorsLight.MAINBACKDROP,
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                color: ColorsLight.SECONDARY,
                width: 1,
              ),
            ),
            height: 50,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextField(
                cursorColor: ColorsLight.PRIMARY,
                style: const TextStyle(
                  color: ColorsLight.PRIMARY,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    labelText: "Mail Address",
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    floatingLabelStyle: TextStyle(
                      color: Colors.white.withOpacity(0),
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
          ),
          Container(
            //TEXT INPUT
            decoration: BoxDecoration(
              color: ColorsLight.MAINBACKDROP,
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                color: ColorsLight.SECONDARY,
                width: 1,
              ),
            ),
            height: 50,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextField(
                cursorColor: ColorsLight.PRIMARY,
                style: const TextStyle(
                  color: ColorsLight.PRIMARY,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    labelText: "Password",
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    floatingLabelStyle: TextStyle(
                      color: Colors.white.withOpacity(0),
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
          ),
          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              color: ColorsLight.ACCEPT,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            child: const Center(
              child: Text(
                'SignIn',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
          ),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 145,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.accessibility,
                        size: 52,
                        color: Colors.black,
                      ),
                      Text(
                        "SignIn with\nGoogle",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                ),
                Container(
                  width: 145,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.facebook_rounded,
                        size: 52,
                        color: Colors.black,
                      ),
                      Text(
                        "SignIn with\nFacebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
          ),
          InkWell(
            onTap: () {
              widget.switchActMode();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "You dont hav an account? ",
                  style: TextStyle(
                    color: ColorsLight.PRIMARY,
                  ),
                ),
                Text(
                  " SignUp",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 37, 224),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
