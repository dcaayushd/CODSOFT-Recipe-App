import 'package:flutter/material.dart';
import 'package:recipo/views/utils/AppColor.dart';

class SearchFilterModal extends StatefulWidget {
  final String initialSortBy;
  final Function(String) onSortByChanged;

  SearchFilterModal(
      {required this.initialSortBy, required this.onSortByChanged});

  @override
  _SearchFilterModalState createState() => _SearchFilterModalState();
}

class _SearchFilterModalState extends State<SearchFilterModal> {
  late String selectedSortBy;

  @override
  void initState() {
    super.initState();
    selectedSortBy = widget.initialSortBy;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        // Section 1 - Header
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            // color: AppColor.whiteSoft,
            color: AppColor.secondary.withOpacity(.9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSortBy = 'All';
                  });
                  widget.onSortByChanged(selectedSortBy);
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 60,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Text(
                'Sort By',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'inter',
                  color: AppColor.primary,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 60,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      // color: Colors.red,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Sort By Options
        buildSortOption('Newest'),
        buildSortOption('Oldest'),
        buildSortOption('Popular'),
      ],
    );
  }

  Widget buildSortOption(String sortBy) {
    return Container(
      decoration: BoxDecoration(
        // color: AppColor.secondary.withOpacity(.9),
        color: AppColor.whiteSoft,
        border: Border(
          bottom: BorderSide(
            // color: AppColor.primaryExtraSoft,
            color: AppColor.primary.withOpacity(.1),
          ),
        ),
      ),
      child: ListTileTheme(
        selectedColor: AppColor.primary,
        textColor: Colors.grey,
        child: ListTile(
          selected: selectedSortBy == sortBy,
          onTap: () {
            setState(() {
              selectedSortBy = sortBy;
            });
            widget.onSortByChanged(selectedSortBy);
          },
          title: Center(
            child: Text(
              sortBy,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color:
                    selectedSortBy == sortBy ? AppColor.primary : Colors.grey,
              ),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
      ),
    );
  }
}
