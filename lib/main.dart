import 'package:credit_card_task/constants.dart';
import 'package:flutter/material.dart';
import 'app_text_styles.dart';
import 'card_input_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1c0d00),
        appBar: AppBar(
          title: const Text(AppConstantsText.paymentDetailsTitle,
              style: AppTextStyles.appBarTitleStyle),
          backgroundColor: const Color(0xFF1c0d00),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                AppConstantsText.cardNumberLabel,
                style: AppTextStyles.labelTextStyle,
              ),
              const SizedBox(height: 10.0),
              const CardInputField(),
              const SizedBox(height: 20.0),
              const Text(
                AppConstantsText.cardholderNameLabel,
                style: AppTextStyles.labelTextStyle,
              ),
              const SizedBox(height: 10.0),
              const CardInputField(),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          AppConstantsText.expirationDateLabel,
                          style: AppTextStyles.labelTextStyle,
                        ),
                        SizedBox(height: 10.0),
                        CardInputField(),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          AppConstantsText.cvvLabel,
                          style: AppTextStyles.labelTextStyle,
                        ),
                        SizedBox(height: 10.0),
                        CardInputField(),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppConstantsText.savePaymentInfoLabel,
                    style: AppTextStyles.labelTextStyle,
                  ),
                  Switch(
                    value: false,
                    activeColor: const Color(0xFF088624),
                    onChanged: (bool newValue) {},
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFffa619)),
                          ),
                          child: const Text(
                            AppConstantsText.payButtonText,
                            style: AppTextStyles.buttonTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        AppConstantsText.encryptedTextMessage,
                        style: AppTextStyles.encryptedTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
