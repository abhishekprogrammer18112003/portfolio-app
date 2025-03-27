import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:portfolio_app/view/projects/components/title_text.dart';
import '../../../view model/responsive.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  final skills = const [
    {'skill': 'Flutter', 'rating': 4.5},
    {'skill': 'Java', 'rating': 4.0},
    {'skill': 'Spring Boot', 'rating': 4.0},
    {'skill': 'Firebase', 'rating': 4.5},
    {'skill': 'Node.js', 'rating': 4.0},
    {'skill': 'SQL', 'rating': 4.0},
    {'skill': 'C++', 'rating': 4.0},
    {'skill': 'OOPS', 'rating': 4.0},
  ];

  final experiences = const [
    {
      'company': 'Cryptographic Solutions',
      'position': 'Application Developer Intern',
      'timeline': 'Mar 2023 - Jul 2023',
      'location': 'Remote/Onsite',
      'work': [
        'Built "Sales Tracking App" that boosted sales by 50%',
        'Developed "Pesticide Control App" to report bugs and reduce insect-borne disease',
        'Created "Pick a Service" app with GPS, multilingual support and live tracking',
      ],
      'links': [
        'https://github.com/abhishekprogrammer18112003/ASM-Sales-Tracker-App',
        'https://github.com/abhishekprogrammer18112003/PickAService-Provider/tree/dev',
        'https://play.google.com/store/apps/details?id=com.abhion.pickaservice.pick_a_service',
      ]
    },
    {
      'company': 'Codehunters',
      'position': 'Flutter Developer Intern',
      'timeline': 'May 2024 - Aug 2024',
      'location': 'Remote/Onsite',
      'work': [
        'Led development of "Gracesoft - Hotel Management App"',
        'Enabled room selection and 1,000+ successful bookings',
        'Built "Vivasayi" - an agri-commerce app with real-time Firebase DB',
      ],
      'links': [
        'https://github.com/abhishekprogrammer18112003/Grace-Soft',
        'https://play.google.com/store/apps/details?id=com.abhion.vivasayi',
      ]
    }
  ];

  final interests = const [
    'Mobile App Development',
    'Painting', 'Gossiping',
    'Playing Badminton/Cricket',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(prefix: 'About', title: 'Me'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal:
                    Responsive.isDesktop(context) ? size.width * 0.1 : 20,
                vertical: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Skills Section
                    Text('Skills',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontSize: Responsive.isMobile(context) ? 22: 22,
                            fontWeight: FontWeight.bold,
                          )),
                    const SizedBox(height: 10),
                    ...skills.map((skill) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                            children: [
                              SizedBox(
                                  width:
                                      Responsive.isMobile(context) ? 90 : 120,
                                  child: Text(skill['skill'] as String,
                                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                          fontSize: 16, ))),
                              SizedBox(
                                width: 10,
                              ),
                              RatingBarIndicator(
                                rating: skill['rating'] as double,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize:
                                    Responsive.isMobile(context) ? 18.0 : 20.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(height: 30),

                    // / Experience Section
                    Text('Experience',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontSize: Responsive.isMobile(context) ? 22 : 22,
                            fontWeight: FontWeight.bold,
                            )),
                    const SizedBox(height: 10),
                    ...experiences.map((exp) => Container(
                          // elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(12)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Colors.pinkAccent,
                              Colors.blue,
                            ]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                offset: const Offset(-2, 0),
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                offset: const Offset(2, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        '${exp['company']} - ${exp['position']}',
                                        style: TextStyle(
                                            fontSize:
                                                Responsive.isMobile(context)
                                                    ? 16
                                                    : 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white)),
                                    const SizedBox(height: 6),
                                    Text(
                                      '${exp['timeline']} | ${exp['location']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.amber),
                                    ),
                                    const SizedBox(height: 10),
                                    ...List.generate(
                                        (exp['work'] as List).length, (i) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text('• '),
                                            Expanded(
                                              child: Text(
                                                  (exp['work'] as List)[i] ,  style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                          ), ),

                                                   
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                                    const SizedBox(height: 10),
                                    Wrap(
                                      spacing: 10,
                                      children: List.generate(
                                          (exp['links'] as List).length, (i) {
                                        return InkWell(
                                          onTap:
                                              () {}, // TODO: implement link open
                                          child: Chip(
                                            label: Text('Link ${i + 1}'),
                                            avatar: const Icon(Icons.link,
                                                size: 16),
                                          ),
                                        );
                                      }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),

                    // ExperienceGrid(),

                    const SizedBox(height: 30),

                    /// Interests Section
                    Text('Interests',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontSize: Responsive.isMobile(context) ? 22 : 22,
                            fontWeight: FontWeight.w600 , )),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: interests
                          .map((e) => Chip(
                                label: Text(e , style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 14 , fontWeight: FontWeight.w500),),
                                backgroundColor: Colors.blue.shade50,
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
