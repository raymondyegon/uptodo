import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uptodo/core/platform/platform.dart';

class AppTextFields extends StatefulWidget {
  final TextInputType? keyboard;
  final TextEditingController? controller;
  final String? hintText;
  final bool isObscure;
  final bool enabled;
  final bool isHint;
  final Color? fillColor;
  final bool autocorrect;
  final bool multiline;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final bool autoFocus;
  final TextStyle? textFieldStyle;
  final TextStyle? hintTextStyle;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledborder;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;

  final ValueChanged<String>? onSubmitted;
  final EdgeInsetsGeometry padding;
  final TextAlignVertical? textAlignVertical;

  const AppTextFields({
    this.keyboard,
    this.maxLength,
    this.textFieldStyle,
    this.hintTextStyle,
    this.suffix,
    this.autoFocus = false,
    this.validator,
    this.inputFormatters,
    this.isObscure = false,
    this.multiline = false,
    this.enabled = true,
    this.autocorrect = true,
    this.hintText,
    this.controller,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.focusNode,
    this.padding = const EdgeInsets.all(8),
    this.border,
    this.focusedBorder,
    this.enabledborder,
    this.isHint = true,
    this.textAlignVertical,
    this.fillColor,
    this.prefix,
  });

  @override
  _AppTextFieldsState createState() => _AppTextFieldsState();
}

class _AppTextFieldsState extends State<AppTextFields> {
  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return TextFormField(
      controller: widget.controller,
      autofocus: widget.autoFocus,
      obscureText: widget.isObscure,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      style: widget.textFieldStyle ??
          Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: _sc.heightScaledSize(14), color: AppColors.white),
      textAlignVertical: widget.textAlignVertical ?? TextAlignVertical.top,
      obscuringCharacter: '●',
      keyboardType: widget.keyboard,
      maxLength: widget.maxLength,
      minLines: widget.minLines,
      maxLines: widget.isObscure ? 1 : (widget.minLines ?? 0) + 1,
      // minLines: widget.multiline ? null : 1,
      // /** widget.minLines**/
      // maxLines: widget.multiline ? null : 1,
      // /** widget.maxLines**/
      expands: widget.multiline,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      inputFormatters: widget.inputFormatters ??
          (widget.keyboard == TextInputType.number
              ? [FilteringTextInputFormatter.digitsOnly]
              : []),
      enabled: widget.enabled,
      autocorrect: widget.autocorrect,
      decoration: InputDecoration(
        hintText: widget.isHint ? widget.hintText : null,
        suffixIcon: widget.suffix,
        contentPadding: widget.padding,
        prefixIcon: widget.prefix,
        prefixIconConstraints: BoxConstraints(
          maxHeight: _sc.heightScaledSize(50),
          maxWidth: _sc.heightScaledSize(50),
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: _sc.heightScaledSize(50),
          maxWidth: _sc.heightScaledSize(50),
        ),
        labelText: !widget.isHint ? widget.hintText : null,
        labelStyle: widget.hintTextStyle,
        hintStyle: widget.hintTextStyle ??
            Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: _sc.heightScaledSize(14),
                  color: AppColors.black2,
                ),
        fillColor: widget.fillColor ?? const Color.fromARGB(255, 29, 29, 29),
        filled: true,
        border: widget.border,
        focusedBorder: widget.focusedBorder,
        enabledBorder: widget.enabledborder,
        errorBorder: InputBorder.none,
        disabledBorder: widget.enabledborder,
      ),
    );
  }
}
