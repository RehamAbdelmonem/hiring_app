import 'package:flutter/material.dart';
import 'package:hiring_app/models/table_data.dart';
import 'package:hiring_app/utils/styles.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  final DataTableSource _data = MyTableData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top:55,left: 10,bottom:25),
            child: Text('Countries', style: Styles.appBarStyle,),
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: PaginatedDataTable(
                source: _data,
                columns: const [
                  DataColumn(label: Text('Country',style: Styles.textStyle16,)),
                  DataColumn(label: Text('Capital',style: Styles.textStyle16,)),
                ],
                columnSpacing: 100,
                horizontalMargin: 60,
                rowsPerPage: 8,
                dataRowHeight:35 ,
                headingRowColor: WidgetStateColor.resolveWith((states) => const Color(0xfff9f9f9)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

