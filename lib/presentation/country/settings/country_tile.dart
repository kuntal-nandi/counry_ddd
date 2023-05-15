import 'package:flutter/material.dart';

class CountryTile extends StatelessWidget {
  const CountryTile({super.key, 
  required this.countryName, 
  required this.code, 
  required this.flag, this.onTap});
  final String countryName;
  final String code;
  final String flag;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(
                    flag,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
              ),
              const SizedBox(width: 10,),
                  SizedBox(
                    width: 200,
                    child: Text(
                      countryName,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
              ),
                 ],
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 22,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(12)),
                    child:  Text(
                      '+${code.split(',').first}',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                    color: Colors.grey.shade600,
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
