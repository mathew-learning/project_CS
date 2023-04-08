import 'package:flutter/material.dart';

import 'package:postgres/postgres.dart';



String data(row){
  final dataValue = row.toString();
  return dataValue;

}


Future<void> dbConnections(String companyName, String state, String city,String address,String contact,String email) async {
final conn = PostgreSQLConnection('host', port, 'database',username:,password:);





  try {
    await conn.open();
    final insert=await conn.query('INSERT INTO Customer_CS(ID,COMPANY_NAME,STATE,CITY,ADDRESS,CONTACT,EMAIL) VALUES (4,\'$companyName\',\'$state\',\'$city\',\'$address\',\'$contact\',\'$email\')');
    // print(result);
    // for (final row in result) {
    //   print(row.toString());
    // }

  } catch (e) {
    print('Error performing database query: $e');
  } finally {
    await conn.close();
  }

}



Future<void> getDATA() async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');





  try {
    await conn.open();
    final result = await conn.query('SELECT * FROM customer_cs');
        for (final row in result) {
          data(row);
    }

  } catch (e) {
    print('Error performing database query: $e');
  } finally {
    await conn.close();
  }

}

