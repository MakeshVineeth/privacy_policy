import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialWidget());
final String title = 'MakeshTech\'s Privacy Policy';
final dateStr = '1st May, 2021';

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
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
      'If you have additional queries or require more information about our Privacy Policy, do not hesitate to contact us at: ';

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
  static final radius = 20.0;
  final _shape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

  final String email = 'makeshvineeth9@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(radius),
        )),
        backgroundColor: Color(0xFF5C6AB1),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Card(
          elevation: 5,
          shape: _shape,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Last Updated: ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(dateStr),
                    ],
                  ),
                  SizedBox(height: 15),
                  paraText(initial),
                  SizedBox(height: space),
                  paraText(hereInOurCompany),
                  headingTitle(consentTitle),
                  paraText(consent),
                  headingTitle(logsTitle),
                  paraText(logsText),
                  headingTitle(processTitle),
                  paraText(processInfo),
                  headingTitle('Links to Other Websites'),
                  paraText(
                      'Our service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.'),
                  headingTitle(partnersTitle),
                  paraText(partnersText),
                  paraText(removeAdsText),
                  headingTitle('Children’s Privacy'),
                  paraText(
                      'Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.'),
                  headingTitle('Security of Your Personal Data'),
                  paraText(
                      'The security of your Personal Data is really important to us, but do remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to follow the best practices to protect your data, We cannot guarantee it\'s absolute security.'),
                  headingTitle('Needed Permissions for Apps'),
                  paraText(
                      'Internet and Read/Write External Storage are some of the common permissions required for the proper functioning of the apps. Some apps may or may not require any permissions at all. Please visit the app\'s description page on App Stores to learn about the permissions asked for each app.'),
                  headingTitle('Unknown Sources Installations'),
                  paraText(
                      'Your device and personal data may become more vulnerable to threats such as Ransomware/Malware from apps downloaded from unknown sources. We strongly advice to download the required software or apps from our official sources.'),
                  headingTitle('Updates to this Privacy Policy'),
                  paraText(
                      'We may update our Privacy Policy from time to time to reflect the changes in our business practices. You are advised to review this Privacy Policy periodically for any changes. We will reflect the changes in the “Last Updated” section mentioned above.'),
                  headingTitle('Questions and Comments'),
                  SizedBox(height: space),
                  Wrap(
                    textDirection: TextDirection.ltr,
                    runSpacing: 3.0,
                    children: [
                      Text(contact),
                      GestureDetector(
                          onTap: () => _launchURL('mailto:$email'),
                          child: Text(
                            email,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue[700],
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 35),
                  Text(
                    '© 2021 MakeshTech Inc. All Rights Reserved.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  )
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
          ),
          SizedBox(height: space + 10),
        ],
      );

  void _launchURL(_url) async {
    await canLaunch(_url) ? await launch(_url) : print('Error: Cannot Launch');
  }
}
