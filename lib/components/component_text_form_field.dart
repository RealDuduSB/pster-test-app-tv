import 'package:flutter/material.dart';

class ComponentTextFormField extends StatefulWidget {
  final int? maxLength;
  // final String? label;
  final TextEditingController controller;
  final TextInputType? type;
  final bool? password;

  const ComponentTextFormField(
      {Key? key,
      this.maxLength,
      // this.label,
      required this.controller,
      this.type,
      this.password})
      : super(key: key);

  @override
  State<ComponentTextFormField> createState() => _ComponentTextFormFieldState();
}

class _ComponentTextFormFieldState extends State<ComponentTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      controller: widget.controller,
      keyboardType: widget.type,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      autofocus: true,
      obscureText: widget.password! ? _obscureText : false,
      maxLength: widget.maxLength,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.black12,
        focusColor: Colors.white,
        hoverColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: widget.password!
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ))
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(
        //     color: Color(0x00000000),
        //     width: 1,
        //   ),
        //   borderRadius: BorderRadius.circular(5),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(
        //     color: Color(0x00000000),
        //     width: 1,
        //   ),
        //   borderRadius: BorderRadius.circular(5),
        // ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Informe um valor válido!';
        }
        return null;
      },
    );
  }
}
