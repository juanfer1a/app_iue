import 'package:flutter/material.dart';

class MesaggeFieldBox extends StatelessWidget {
  const MesaggeFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    //final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: 'End your message whith a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('Button: $textValue');
            textController.clear();
          },
        ));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus(); //poder quitar el foco para otro lado
      },
      focusNode: focusNode, //mantener el foco en la caja
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        //print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
