import 'package:flutter/material.dart';
import 'package:odc_project/view/components/core/core_components.dart';
import 'package:odc_project/view/components/pages_components/setting_components.dart';
import 'package:odc_project/view/pages/faq.dart';
import 'package:odc_project/view/pages/our_partners.dart';
import 'package:odc_project/view/pages/support.dart';
import 'package:odc_project/view/pages/terms_condition.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [

          InkWell(
            onTap: ()
            {
              navigateTo(context, FAQScreen());
            },
              child: DefaultListTile(text: 'FAQ')),
          divider(),
          InkWell( onTap: ()
          {
            navigateTo(context, TermsAndCondition());
          },child: DefaultListTile(text: 'Terms & Conditions')),
          divider(),
          InkWell(
            onTap: ()
            {
              navigateTo(context, OurPartnerScreen());
            },
              child: DefaultListTile(text: 'Our Partners')),
          divider(),
          InkWell(
              onTap: ()
              {
                navigateTo(context, SupportScreen());
              },
              child: DefaultListTile(text: 'Support')),
          divider(),
          DefaultListTile(text: 'Log Out'),

        ],
      ),
    );
  }
}