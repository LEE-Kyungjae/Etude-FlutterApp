import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../../provider/google_sign_in.dart';

void logout(context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '로그아웃 하시겠습니까?',
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                            provider.logout();
                          },
                          child: const Text('예')),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();

                          },
                          child: const Text('아니오')),
                    ],
                  ),
                ],
              ),
            ));
      });
}
