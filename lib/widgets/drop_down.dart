import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDown extends StatefulWidget {
  const DropDown(
      {Key? key,
      this.selectedItem,
      this.dropdownItems,
      this.onChange,
      this.width,
      this.hintText})
      : super(key: key);
  final selectedItem;
  final double? width;
  final String? hintText;
  final dropdownItems;
  final void Function(Object)? onChange;

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<DropdownMenuItem<Object?>> _dropdownItems = [];
  var _selectedTest;

  @override
  void initState() {
    _dropdownItems = buildDropdownTestItems(widget.dropdownItems);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  onChangeDropdownTests(selectedTest) {
    setState(() {
      _selectedTest = selectedTest;
    });
    widget.onChange!(selectedTest);
  }

  List<DropdownMenuItem<Object?>> buildDropdownTestItems(List _testList) {
    List<DropdownMenuItem<Object?>> items = [];
    for (var i in _testList) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(
            i['keyword'],
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownBelow(
      itemWidth: 200,
      itemTextstyle:
          theme.textTheme.bodyText2!.apply(color: theme.colorScheme.onPrimary),
      icon: Icon(Icons.keyboard_arrow_down),
      boxTextstyle: theme.textTheme.button,
      boxPadding: EdgeInsets.fromLTRB(7, 5, 5, 5),
      boxDecoration: BoxDecoration(
          color: theme.colorScheme.surface,
          border: Border.all(
            color: theme.dividerColor,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      boxHeight: 45,
      boxWidth: widget.width ?? 100.w,
      hint: Text('${widget.hintText}'),
      value: widget.selectedItem,
      items: _dropdownItems,
      onChanged: onChangeDropdownTests,
    );
  }
}
