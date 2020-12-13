import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa_coding_exercise/pages/lookup/lookup_bloc.dart';
import 'package:spa_coding_exercise/values/app_theme.dart';
import 'package:spa_coding_exercise/values/dimensions.dart';
import 'package:spa_coding_exercise/widgets/colored_safe_area.dart';
import 'package:spa_coding_exercise/widgets/search_field.dart';
import 'package:spa_coding_exercise/widgets/error_dialog.dart';

import '../../injection.dart';

class LookupPage extends StatefulWidget {
  @override
  _LookupPageState createState() => _LookupPageState();
}

class _LookupPageState extends State<LookupPage> {
  LookupBloc _lookupBloc;

  @override
  void initState() {
    _lookupBloc = LookupBloc(getIt.get());
    super.initState();
  }

  @override
  void dispose() {
    _lookupBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: context.backgroundColor(),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return BlocProvider.value(
        value: _lookupBloc,
        child: BlocConsumer<LookupBloc, LookupState>(
            listener: (BuildContext context, LookupState state) {
          if (state.error != null) {
            showErrorDialog(state.error, context);
          }
        }, builder: (BuildContext context, LookupState state) {
          return Container(
              padding: EdgeInsets.only(
                  left: Dimensions.PADDING_L,
                  top: Dimensions.PADDING_M,
                  right: Dimensions.PADDING_L),
              child: Column(
                children: [
                  Row(children: [
                    _search(),
                    const SizedBox(width: Dimensions.PADDING_M),
                    _locationButton(state.isLocating)
                  ]),
                  _list(),
                ],
              ));
        }));
  }

  Widget _search() {
    return Flexible(
        child: SearchField(
            hint: 'Search by city name',
            onChanged: (text) {
              _lookupBloc.add(LookupEvent.search(text));
            }));
  }

  Widget _locationButton(bool isLocating) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      height: Dimensions.SEARCH_FIELD_HEIGHT,
      minWidth: Dimensions.SEARCH_FIELD_HEIGHT,
      color: AppColors.searchBackground,
      textColor: AppColors.hint,
      child: isLocating
          ? SizedBox(
              width: Dimensions.PROGRESS_INDICATOR_SIZE,
              height: Dimensions.PROGRESS_INDICATOR_SIZE,
              child: CircularProgressIndicator())
          : Icon(Icons.gps_fixed),
      onPressed: () => _lookupBloc.add(LookupEvent.locate()),
    );
  }

  Widget _list() {
    return BlocBuilder<LookupBloc, LookupState>(
        builder: (BuildContext context, LookupState state) {
      return state.places.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: state.places.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.only(top: Dimensions.PADDING_M),
                    child: Text(state.places[index].name,
                        style: context.titleStyle()));
              },
            )
          : Container(
              padding: EdgeInsets.only(top: Dimensions.PADDING_M),
              child: Text(
                "No result",
                style: context.captionTextStyle(),
              ));
    });
  }
}
