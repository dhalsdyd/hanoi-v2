import 'package:hanoi_v2/app/core/theme/text_theme.dart';
import 'package:hanoi_v2/app/widgets/button.dart';
import 'package:hanoi_v2/app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Hello World!!!", style: AppTextTheme.bold20),
            const SizedBox(height: 8),
            FGBPTextField(textController: textEditingController),
            const SizedBox(height: 8),
            const FGBPTextButton(text: "Hello", radius: 10),
          ],
        ),
      )),
    );
  }
}
