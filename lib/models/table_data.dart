import 'package:flutter/material.dart';
import 'package:hiring_app/utils/styles.dart';

class MyTableData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      10,
      (index) => {
            "id": index,
            "country": "Egypt",
            "capital": "Cairo"
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['country'],style: Styles.textStyle14,)),
      DataCell(Text(_data[index]['capital'],style: Styles.textStyle14)),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
