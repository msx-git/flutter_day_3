import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigateToButton extends StatelessWidget {
  const NavigateToButton({
    super.key,
    required this.page,
    required this.pageName,
  });

  final Widget page;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => page),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        // alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              pageName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
