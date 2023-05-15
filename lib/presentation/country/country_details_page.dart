import 'package:country/domain/country/entities/country_model.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  const CountryDetails({super.key, required this.country});
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Text(
                '${country.name} ${country.code}',
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          country.emoji,
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            country.native,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Currency: ${country.currency}',
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Phone Code: +${country.phone}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade300),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Languages',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.only(top: 10),
                          itemCount: country.languages.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blueAccent.shade100),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Language Name: ${country.languages[index].name}',
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Language Code: ${country.languages[index].code}',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Native: ${country.languages[index].native}',
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    country.languages[index].rtl
                                        ? Container(
                                            height: 30,
                                            width: 120,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.red.shade700,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Text(
                                              'Right To Left',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          )
                                        : Container(
                                            height: 30,
                                            width: 120,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green.shade700,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Text(
                                              'Left To Right',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ),
                                  ]),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),

            
          ]),
    );
  }
}
