import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextInputAction? action;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Function()? onTap;
  final String label;
  bool isError;
  final String errorText;
  final double width;
  final int maxLines;
  final bool isPassword;
  final bool isEnabled;
  final bool isRequired;

  CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.action,
    this.focusNode,
    this.onChanged,
    this.onTap,
    required this.label,
    this.isError = false,
    this.errorText = '',
    this.width = double.infinity,
    this.maxLines = 1,
    this.isPassword = false,
    this.isEnabled = true,
    this.isRequired = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

bool passwordHidden = true;

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    if (widget.errorText.isNotEmpty) {
      setState(() {
        widget.isError = true;
      });
    }
    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            maxLines: widget.maxLines,
            obscureText: widget.isPassword && passwordHidden,
            decoration: InputDecoration(
              enabled: widget.isEnabled,
              labelText: widget.isRequired ? "${widget.label}*" : widget.label,
              labelStyle: TextStyle(
                color: widget.isError
                    ? const Color.fromRGBO(230, 57, 70, .6)
                    : Colors.grey[400],
              ),
              floatingLabelStyle: TextStyle(
                  color: widget.isError
                      ? const Color.fromRGBO(230, 57, 70, 1)
                      : const Color.fromRGBO(2, 48, 71, 1),
                  fontWeight: FontWeight.w400),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade700, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isError
                      ? const Color.fromRGBO(230, 57, 70, 1)
                      : Colors.grey.shade700,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isError
                      ? const Color.fromRGBO(230, 57, 70, 1)
                      : const Color.fromRGBO(2, 48, 71, 1),
                  width: 2.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      padding: const EdgeInsets.only(right: 8),
                      icon: Icon(
                        passwordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color.fromRGBO(0, 38, 53, 1),
                      ),
                      onPressed: () {
                        setState(() {
                          passwordHidden = !passwordHidden;
                        });
                      },
                    )
                  : null,
            ),
          ),
          if (widget.errorText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                widget.errorText,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(230, 57, 70, 1),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
