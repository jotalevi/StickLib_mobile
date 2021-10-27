import 'package:flutter/material.dart';
import 'package:stick_lib/classes/constants.dart';

class SlEditableText extends StatefulWidget {
  const SlEditableText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  _SlEditableTextState createState() => _SlEditableTextState();
}

class _SlEditableTextState extends State<SlEditableText> {
  late String wText;
  late TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.text = widget.text;
    wText = widget.text;

    super.initState();
  }

  void update_ty(String _) {
    setState(() {
      wText = _;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              wText,
              style: const TextStyle(
                fontSize: 36,
                color: ColorsLight.PRIMARY,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
            ),
            const Icon(
              Icons.edit,
              size: 36,
              color: ColorsLight.PRIMARY,
            ),
          ],
        ),
        Opacity(
          opacity: 0,
          child: TextField(
            onChanged: update_ty,
            controller: _controller,
          ),
        ),
      ],
    );
  }
}
