import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/error.png', width: 300,),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going?', 
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you were \n requested is already gone',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: edge
                ),
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const HomePage()
                      )
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(purpleColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)
                      )
                    )
                  ),
                  child: Text(
                    'Back To Home', 
                    style: whiteTextStyle.copyWith(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}