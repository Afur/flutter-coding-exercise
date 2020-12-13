import 'package:flutter/material.dart';
import 'package:spa_coding_exercise/values/app_theme.dart';
import 'package:spa_coding_exercise/values/dimensions.dart';

class SearchField extends StatefulWidget {
  final String hint;
  final OnChanged onChanged;
  final TextEditingController controller;

  const SearchField({Key key, this.hint, this.onChanged, this.controller}) : super(key: key);

  @override
  _RoundedSearchFieldState createState() => _RoundedSearchFieldState();
}

class _RoundedSearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.SEARCH_FIELD_HEIGHT,
      child: TextField(
        controller: widget.controller,
        onChanged: (text) => widget.onChanged?.call(text),
        textAlign: TextAlign.left,
        style: context.bodyTextStyle().copyWith(color: AppColors.hint),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(right: Dimensions.PADDING_MS),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.searchBackground),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.searchBackground),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.searchBackground),
            ),
            prefixIcon: Icon(Icons.search, color: AppColors.hint),
            prefixIconConstraints: BoxConstraints(minWidth: 32),
            filled: true,
            hintStyle: context.captionTextStyle(),
            hintText: widget.hint ?? "",
            fillColor: AppColors.searchBackground),
      ),
    );
  }
}

typedef OnChanged = void Function(String);
