import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String? selectedValue;
  TextEditingController _date = TextEditingController();
  final _month = ['Jan', 'Fab', 'March', 'April'];
  final _year = ['2015', '2016', '2017', '2018', '2019'];
  final _bank = ['SBI', 'ICICI', 'KOTAH', 'BOB'];
  final _card = ['2', '3', '4', '5'];
  final _duration = ['2015-2016', '2016-2017', '2017-2018', '2018-2019'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 243, 251, 1),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Payment Detail',
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.home,
                        color: Colors.deepPurple[800],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        '/',
                        style: TextStyle(color: Colors.deepPurple[800]),
                      ),
                    ),
                    Text(
                      'Ecommerce',
                      style: TextStyle(color: Colors.deepPurple[800]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        '/',
                        style: TextStyle(color: Colors.deepPurple[600]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Payment Details',
                        style: TextStyle(color: Colors.deepPurple[600]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Credit Card',
                          style: TextStyle(
                            color: Colors.deepPurple[900],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Card Number',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white),
                                  child: TextField(
                                    controller: _date,
                                    decoration: InputDecoration(
                                      labelText: "Select Date",
                                      suffixIcon:
                                          Icon(Icons.calendar_today_rounded),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    onTap: () async {
                                      DateTime? pickeddate =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2101));
                                      if (pickeddate != null) {
                                        setState(
                                          () {
                                            _date.text =
                                                DateFormat('dd/MM/yyyy')
                                                    .format(pickeddate);
                                          },
                                        );
                                      }
                                    },
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Name On Card',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Select Type',
                                ),
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset('credit.png'),
                        ))
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Debit Card',
                          style: TextStyle(
                              color: Colors.deepPurple[800],
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5, bottom: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'First Number',
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Card Number',
                                    ),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5, bottom: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'CCV Number',
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'CVC',
                                    ),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Expiration Date',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, right: 5, bottom: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 190, 190, 190)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                      ),
                                      child: DropdownButtonFormField(
                                        // value: _month[0],
                                        items: _month
                                            .map((e) => DropdownMenuItem(
                                                  child: Text(e),
                                                  value: e,
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                          value as String;
                                        },
                                        hint: Text('Select month'),
                                      ),
                                    ))
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 8, left: 5, bottom: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 190, 190, 190)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    child: DropdownButtonFormField(
                                      items: _year
                                          .map((e) => DropdownMenuItem(
                                                child: Text(e),
                                                value: e,
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        value as String;
                                      },
                                      hint: Text('Select year'),
                                    ),
                                  ),
                                )
                              ],
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.deepPurpleAccent,
                                ),
                                onPressed: () {},
                                child: Text('Submit'),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'COD',
                          style: TextStyle(
                              color: Colors.deepPurple[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, right: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'First Name',
                                  ),
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, left: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Last Name',
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, right: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Pincode',
                                  ),
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, left: 5),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 10,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    counterText: "",
                                    labelText: 'Enter mobile',
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5, bottom: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'State',
                                  ),
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'City',
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 8),
                        child: TextFormField(
                          minLines: 2,
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              hintText: 'Adress',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        onPressed: () {},
                        child: Text('Submit'),
                      ),
                    ]),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'EMI',
                          style: TextStyle(
                              color: Colors.deepPurple[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5, bottom: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'First Name',
                                  ),
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Last Name',
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(children: [
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5, bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Pincode',
                                ),
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 190, 190, 190)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: DropdownButtonFormField(
                                  items: _bank
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    value as String;
                                  },
                                  hint: Text('Bank name'),
                                ),
                              ),
                            )
                          ],
                        )),
                      ]),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 190, 190, 190)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3))),
                                  child: DropdownButtonFormField(
                                    items: _card
                                        .map((e) => DropdownMenuItem(
                                              child: Text(e),
                                              value: e,
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      value as String;
                                    },
                                    hint: Text('Select card'),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 190, 190, 190)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    child: DropdownButtonFormField(
                                      items: _duration
                                          .map((e) => DropdownMenuItem(
                                                child: Text(e),
                                                value: e,
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        value as String;
                                      },
                                      hint: Text('Select Duration'),
                                    ),
                                  ))
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'visa_mastercard.png',
                            width: 100,
                            height: 80,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 6.0),
                            child: Image.asset(
                              'paypal.png',
                              width: 100,
                              height: 80,
                            ),
                          )
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        onPressed: () {},
                        child: Text('Submit'),
                      ),
                    ]),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Net Banking',
                          style: TextStyle(
                              color: Colors.deepPurple[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'AC Holder Name',
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Account Number',
                                    ),
                                  ))
                            ],
                          )),
                        ],
                      ),
                      Row(children: [
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 190, 190, 190)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: DropdownButtonFormField(
                                  items: _bank
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    value as String;
                                  },
                                  hint: Text('Bank name'),
                                ),
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5, bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'ICFC Code',
                                ),
                              ),
                            )
                          ],
                        )),
                      ]),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  counterText: "",
                                  labelText: 'Enter mobile',
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Other Detail',
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        onPressed: () {},
                        child: Text('Submit'),
                      ),
                    ]),
              )),
            ],
          )
        ],
      )),
    );
  }
}
