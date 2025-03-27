import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/view/projects/components/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const TitleText(prefix: 'Contact', title: 'Me'),
          Expanded(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.all(3),
                      width: constraints.maxWidth < 600 ? double.infinity : 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [Colors.pinkAccent, Colors.blue],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.pink,
                            offset: Offset(-2, 0),
                            blurRadius: 15,
                          ),
                          BoxShadow(
                            color: Colors.blue,
                            offset: Offset(2, 0),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact Me",
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 20),

                              // Email
                              _ContactRow(
                                icon: Icons.email,
                                text: "tech.abhishekchauhan@gmail.com",
                                onTap: () => launchUrl(Uri.parse(
                                    "mailto:tech.abhishekchauhan@gmail.com")),
                              ),

                              // Phone
                              _ContactRow(
                                icon: Icons.phone,
                                text: "8099950828",
                                onTap: () =>
                                    launchUrl(Uri.parse("tel:+918099950828")),
                              ),

                              // const SizedBox(height: 20),

                              // Social Links
                              Row(
                                children: [
                                  _SocialIcon(
                                    icon: FontAwesomeIcons.linkedin,
                                    url:
                                        "https://www.linkedin.com/in/abhishek-chauhan-046551206/",
                                  ),
                                  _SocialIcon(
                                    icon: FontAwesomeIcons.github,
                                    url:
                                        "https://github.com/abhishekprogrammer18112003",
                                  ),

                                  // _SocialIcon(
                                  //   icon: FontAwesomeIcons.instagram,
                                  //   url: "https://instagram.com/ashish",
                                  // ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const _ContactRow(
      {required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Icon(icon, color: Colors.white70),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.white),
      onPressed: () => launchUrl(Uri.parse(url)),
      tooltip: url,
    );
  }
}
