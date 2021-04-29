import 'package:flutter/material.dart';

void main() => runApp(MaterialWidget());

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final initial =
      'We do not collect your personal data, period. Most of our projects are also Open-Source Projects.';

  final hereInOurCompany =
      'At MakeshTech, one of our main priorities is the privacy of our users. This Privacy Policy document contains types of information that is collected and recorded by MakeshTech and how we use it.';

  final contact =
      'If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us at makeshvineeth9@gmail.com';

  final consentTitle = 'Consent';
  final consent =
      'By using our services, you hereby consent to our Privacy Policy and agree to its terms. The information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your non-critical information.';

  final logsTitle = 'Log Files';
  final logsText =
      'MakeshTech follows a standard procedure of using log files. These are not linked to any information that is personally identifiable. The log files are only collected when the user manually generates a bug report. The information collected by log files include email provided by you during Bug Reports, System OS Version, Screenshots of Crash/Bugs and Device Name/Brand.';

  final processTitle = 'How we use your information';
  final processInfo =
      'We do not collect personal information other than the contact information you supply on the feedback page which includes your Name & Email. All the non-critical and non-personal data will only be used for fixing the reported bugs and will never be shared with anyone or any third-party services. Occasionally, we might ask you for your email for any bug report that you have submitted. This will only be used for contacting you (with your permission) and discuss about that aforementioned bug report, nothing else.';

  final partnersTitle = 'Advertising Partners Privacy Policies';
  final partnersText =
      'MakeshTech\'s Privacy Policy does not apply to other advertisers. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information.';

  final removeAdsText =
      'So, if any of our apps are supported by advertising, be assured that we will also provide an option to disable them through a much affordable in-app purchase. We would also provide an option to disable Interest-Based Ads depending on the availability, thus less tracking, for the people who do not intend to pay.';

  final space = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              child: Column(
                children: [
                  paraText(initial),
                  SizedBox(height: space),
                  paraText(hereInOurCompany),
                  headingTitle(consentTitle),
                  paraText(consent),
                  headingTitle(logsTitle),
                  paraText(logsText),
                  headingTitle(processTitle),
                  paraText(processInfo),
                  headingTitle(partnersTitle),
                  paraText(partnersText),
                  paraText(removeAdsText),
                  headingTitle('Security of Your Personal Data'),
                  paraText(
                      'The security of your Personal Data is really important to us, but do remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to follow the best practices to protect your data, We cannot guarantee it\'s absolute security.'),
                  headingTitle('Updates to this Privacy Policy'),
                  paraText(
                      'We may update our Privacy Policy from time to time to reflect changes in our business practices. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.'),
                  headingTitle('Questions and Comments'),
                  paraText(contact),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget headingTitle(String text) => Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: space),
        ],
      );

  Widget paraText(String text) => Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: space),
        ],
      );
}
