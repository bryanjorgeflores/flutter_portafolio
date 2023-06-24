import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class AddressButton extends StatelessWidget {
  final String address;
  const AddressButton({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'address');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: white,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: white,
            ),
            Expanded(
              child: TextWidget(
                text: address,
                color: white,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
