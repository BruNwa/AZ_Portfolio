import 'package:Portfolio/widgets/certifications.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../const/themecolors.dart';
import '../widgets/languageskills.dart';

class Career extends StatelessWidget {
  final Size size;
  const Career({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          decoration: const BoxDecoration(color: Colors.black45),
          child: Column(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.paleSlate),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Career',
                    style: TextStyle(
                        color: AppColors.paleSlate,
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(height: size.height * 0.02),
              GradientText(
                "Professional & Academic",
                colors: const [AppColors.studio, AppColors.paleSlate],
                style: TextStyle(
                    fontSize: size.width * 0.018,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Professional',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/icons/majorel.png',
                                  height: 30,
                                  width: 60,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text("Content Support Specialist",
                                    style: TextStyle(
                                        color: AppColors.paleSlate,
                                        fontFamily: 'Poppins',
                                        fontSize: 17)),
                                SizedBox(
                                  width: size.width * 0.1,
                                ),
                                const Text("Oct 2021 - Nov 2023\nMorocco",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 10))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              height: size.height * 0.2,
                              width: size.width * 0.35,
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Efficient Customer Assistance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Deliver efficient and courteous technical support across multiple communication channels. \n '),
                                    TextSpan(
                                        text: 'Timely Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Address technical inquiries, issues, and escalations promptly andeffectively. \n '),
                                    TextSpan(
                                        text: 'Product Expertise:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Develop comprehensive product knowledge to offer precise technical assistance. \n '),
                                    TextSpan(
                                        text: 'Performance Optimization:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Meet or surpass key technical performance indicators (KPIs) to ensure customer satisfaction.\n '),
                                    TextSpan(
                                        text: 'Continuous Skill Enhancement:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Stay abreast of technological advancements, product updates, and industry best practices. \n '),
                                    TextSpan(
                                        text: 'Collaborative Problem-Solving:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Collaborate closely with team members and cross-functional teams to resolve complex technical issues and improve overall support effectiveness.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/icons/circet.png',
                                  height: 30,
                                  width: 60,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text(" Internship - IT Support",
                                    style: TextStyle(
                                        color: AppColors.paleSlate,
                                        fontFamily: 'Poppins',
                                        fontSize: 17)),
                                SizedBox(
                                  width: size.width * 0.1,
                                ),
                                const Text("Feb 2021 - Jun 2023\nMorocco",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 10))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              height: size.height * 0.17,
                              width: size.width * 0.35,
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Technical Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Diagnosed and resolved hardware and software issues for end-users, ensuring minimal downtime and disruption to operations.\n '),
                                    TextSpan(
                                        text: 'Hardware Maintenance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Installed, configured, and maintained computer systems, peripherals, and network devices, ensuring optimal performance. \n '),
                                    TextSpan(
                                        text: 'Security Measures',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Assisted in implementing and enforcing security protocols, including antivirus software, firewalls, and user access controls, to protect against data breaches and cyber threats.\n '),
                                    TextSpan(
                                        text: 'Problem Escalation:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Escalated complex technical issues to senior IT staff or third party support providers when necessary, ensuring timely resolution.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Academic',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Column(
                        children: [
                          HoverContainer(
                            hoverDecoration: BoxDecoration(
                                border: Border.all(color: AppColors.studio),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            padding: const EdgeInsets.all(35),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.paleSlate),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/pcz.png',
                                      height: 30,
                                      width: 98,
                                    ),
                                    SizedBox(width: size.width * 0.02),
                                    const Text(
                                      ' Czestochowa University of Technology',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.009),
                                const Text(
                                  'Master\'s Degree In Quality And Production Management',
                                  style: TextStyle(
                                      color: AppColors.paleSlate,
                                      fontFamily: 'Poppins',
                                      fontSize: 19),
                                ),
                                SizedBox(height: size.height * 0.009),
                                Row(
                                  children: [
                                    const Text(
                                      'Poland',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                    SizedBox(width: size.width * 0.2),
                                    const Text(
                                      '2023 - Present',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icons/fst.png',
                                  height: 30,
                                  width: 99,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  ' Faculté des sciences et techniques',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Bachelor\'s Degree In information technology, Networks And Cybersecurity \n (Computer Science)',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            Row(
                              children: [
                                const Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                SizedBox(width: size.width * 0.2),
                                const Text(
                                  '2022 - 2023',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icons/ofppt.png',
                                  height: 30,
                                  width: 43,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  ' L’institut Specialise De Technologie Appliquée',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Specialised Technician Diploma In Computer Networks',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            Row(
                              children: [
                                const Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                SizedBox(width: size.width * 0.2),
                                const Text(
                                  '2019 - 2021',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Certifications',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          height: size.height * 0.4,
                          width: size.width * 0.5,
                          child: CertificateCarouselSlide(
                              autoScrollDuration: const Duration(seconds: 3),
                              size: size),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Languages',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        LanguageRoseChart(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class MidCareer extends StatelessWidget {
  final Size size;
  const MidCareer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          decoration: const BoxDecoration(color: Colors.black45),
          child: Column(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.paleSlate),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Career',
                    style: TextStyle(
                        color: AppColors.paleSlate,
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(height: size.height * 0.02),
              GradientText(
                "Professional\n& Academic",
                colors: const [AppColors.studio, AppColors.paleSlate],
                style: TextStyle(
                    fontSize: size.width * 0.018,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Professional',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        SizedBox(height: size.height * 0.05),
                        HoverContainer(
                          hoverDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.rouge),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(35),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.paleSlate),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/icons/majorel.png',
                                    height: 30,
                                    width: 60,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  const Text("Content Support Specialist",
                                      style: TextStyle(
                                          color: AppColors.paleSlate,
                                          fontFamily: 'Poppins',
                                          fontSize: 17)),
                                  SizedBox(
                                    width: size.width * 0.1,
                                  ),
                                  const Text("Oct 2021 - Nov 2023\nMorocco",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 10))
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              SizedBox(
                                height: size.height * 0.2,
                                width: size.width * 0.35,
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white60,
                                      fontFamily: 'Poppins',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Key responsibilities: \n \n ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              'Efficient Customer Assistance:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Deliver efficient and courteous technical support across multiple communication channels. \n '),
                                      TextSpan(
                                          text: 'Timely Troubleshooting:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Address technical inquiries, issues, and escalations promptly andeffectively. \n '),
                                      TextSpan(
                                          text: 'Product Expertise:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Develop comprehensive product knowledge to offer precise technical assistance. \n '),
                                      TextSpan(
                                          text: 'Performance Optimization:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Meet or surpass key technical performance indicators (KPIs) to ensure customer satisfaction.\n '),
                                      TextSpan(
                                          text: 'Continuous Skill Enhancement:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Stay abreast of technological advancements, product updates, and industry best practices. \n '),
                                      TextSpan(
                                          text:
                                              'Collaborative Problem-Solving:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Collaborate closely with team members and cross-functional teams to resolve complex technical issues and improve overall support effectiveness.'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.05),
                        HoverContainer(
                          hoverDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.rouge),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(35),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.paleSlate),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/icons/circet.png',
                                    height: 30,
                                    width: 60,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  const Text(" Internship - IT Support",
                                      style: TextStyle(
                                          color: AppColors.paleSlate,
                                          fontFamily: 'Poppins',
                                          fontSize: 17)),
                                  SizedBox(
                                    width: size.width * 0.1,
                                  ),
                                  const Text("Feb 2021 - Jun 2023\nMorocco",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 10))
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              SizedBox(
                                height: size.height * 0.17,
                                width: size.width * 0.35,
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white60,
                                      fontFamily: 'Poppins',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Key responsibilities: \n \n ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: 'Technical Troubleshooting:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              '  Diagnosed and resolved hardware and software issues for end-users, ensuring minimal downtime and disruption to operations.\n '),
                                      TextSpan(
                                          text: 'Hardware Maintenance:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Installed, configured, and maintained computer systems, peripherals, and network devices, ensuring optimal performance. \n '),
                                      TextSpan(
                                          text: 'Security Measures',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              '  Assisted in implementing and enforcing security protocols, including antivirus software, firewalls, and user access controls, to protect against data breaches and cyber threats.\n '),
                                      TextSpan(
                                          text: 'Problem Escalation:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              ' Escalated complex technical issues to senior IT staff or third party support providers when necessary, ensuring timely resolution.'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Academic',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        SizedBox(height: size.height * 0.025),
                        Column(
                          children: [
                            HoverContainer(
                              hoverDecoration: BoxDecoration(
                                  border: Border.all(color: AppColors.studio),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              padding: const EdgeInsets.all(35),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.paleSlate),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/icons/pcz.png',
                                        height: 30,
                                        width: 98,
                                      ),
                                      const Text(
                                        '  Czestochowa University of Technology',
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.009),
                                  const Text(
                                    'Master\'s Degree In Quality And Production Management',
                                    style: TextStyle(
                                        color: AppColors.paleSlate,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: size.height * 0.009),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Poland',
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Poppins',
                                            fontSize: 18),
                                      ),
                                      SizedBox(width: size.width * 0.2),
                                      const Text(
                                        '2023 - Present',
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Poppins',
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        HoverContainer(
                          hoverDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.studio),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(35),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.paleSlate),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/fst.png',
                                    height: 30,
                                    width: 99,
                                  ),
                                  const Text(
                                    '  Faculté des sciences et techniques',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: size.height * 0.009),
                              const Text(
                                'Bachelor\'s Degree In information technology, Networks And Cybersecurity \n (Computer Science)',
                                style: TextStyle(
                                    color: AppColors.paleSlate,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: size.height * 0.009),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Morocco',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 18),
                                  ),
                                  SizedBox(width: size.width * 0.2),
                                  const Text(
                                    '2022 - 2023',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        HoverContainer(
                          hoverDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.studio),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(35),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.paleSlate),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/ofppt.png',
                                    height: 30,
                                    width: 43,
                                  ),
                                  const Text(
                                    '  L’institut Specialise De Technologie Appliquée',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: size.height * 0.009),
                              const Text(
                                'Specialised Technician Diploma In Computer Networks',
                                style: TextStyle(
                                    color: AppColors.paleSlate,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: size.height * 0.009),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Morocco',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 18),
                                  ),
                                  SizedBox(width: size.width * 0.2),
                                  const Text(
                                    '2019 - 2021',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Certifications',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          height: size.height * 0.4,
                          width: size.width * 0.5,
                          child: CertificateCarouselSlide(
                              autoScrollDuration: const Duration(seconds: 3),
                              size: size),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Languages',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        LanguageRoseChart(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class smallCareer extends StatelessWidget {
  final Size size;
  const smallCareer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: size.width * 0.7,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.paleSlate),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Career',
                    style: TextStyle(
                        color: AppColors.paleSlate,
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(height: size.height * 0.02),
              GradientText(
                "Professional & Academic",
                colors: const [AppColors.studio, AppColors.paleSlate],
                style: TextStyle(
                    fontSize: size.width * 0.018,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Professional',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/majorel.png',
                                      height: 30,
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    const Text("Content Support Specialist",
                                        style: TextStyle(
                                            color: AppColors.paleSlate,
                                            fontFamily: 'Poppins',
                                            fontSize: 17)),
                                  ],
                                ),
                                const Text("Oct 2021 - Nov 2023\nMorocco",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 10))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Efficient Customer Assistance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Deliver efficient and courteous technical support across multiple communication channels. \n '),
                                    TextSpan(
                                        text: 'Timely Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Address technical inquiries, issues, and escalations promptly andeffectively. \n '),
                                    TextSpan(
                                        text: 'Product Expertise:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Develop comprehensive product knowledge to offer precise technical assistance. \n '),
                                    TextSpan(
                                        text: 'Performance Optimization:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Meet or surpass key technical performance indicators (KPIs) to ensure customer satisfaction.\n '),
                                    TextSpan(
                                        text: 'Continuous Skill Enhancement:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Stay abreast of technological advancements, product updates, and industry best practices. \n '),
                                    TextSpan(
                                        text: 'Collaborative Problem-Solving:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Collaborate closely with team members and cross-functional teams to resolve complex technical issues and improve overall support effectiveness.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/circet.png',
                                      height: 30,
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    const Text(" Internship - IT Support",
                                        style: TextStyle(
                                            color: AppColors.paleSlate,
                                            fontFamily: 'Poppins',
                                            fontSize: 17)),
                                  ],
                                ),
                                const Text("Feb 2021 - Jun 2023\nMorocco",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Poppins',
                                        fontSize: 10))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Technical Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Diagnosed and resolved hardware and software issues for end-users, ensuring minimal downtime and disruption to operations.\n '),
                                    TextSpan(
                                        text: 'Hardware Maintenance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Installed, configured, and maintained computer systems, peripherals, and network devices, ensuring optimal performance. \n '),
                                    TextSpan(
                                        text: 'Security Measures',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Assisted in implementing and enforcing security protocols, including antivirus software, firewalls, and user access controls, to protect against data breaches and cyber threats.\n '),
                                    TextSpan(
                                        text: 'Problem Escalation:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Escalated complex technical issues to senior IT staff or third party support providers when necessary, ensuring timely resolution.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Academic',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.025),
                      Column(
                        children: [
                          HoverContainer(
                            hoverDecoration: BoxDecoration(
                                border: Border.all(color: AppColors.studio),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            padding: const EdgeInsets.all(35),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.paleSlate),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/pcz.png',
                                      height: 30,
                                      width: 98,
                                    ),
                                    const Text(
                                      '  Czestochowa University of Technology',
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.009),
                                const Text(
                                  'Master\'s Degree In Quality And Production Management',
                                  style: TextStyle(
                                      color: AppColors.paleSlate,
                                      fontFamily: 'Poppins',
                                      fontSize: 19),
                                ),
                                SizedBox(height: size.height * 0.009),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Poland',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                    SizedBox(width: size.width * 0.2),
                                    const Text(
                                      '2023 - Present',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icons/fst.png',
                                  height: 30,
                                  width: 99,
                                ),
                                const Text(
                                  '  Faculté des sciences et techniques',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Bachelor\'s Degree In information technology, Networks And Cybersecurity \n (Computer Science)',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                SizedBox(width: size.width * 0.2),
                                const Text(
                                  '2022 - 2023',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icons/ofppt.png',
                                  height: 30,
                                  width: 43,
                                ),
                                const Text(
                                  '  L’institut Specialise De Technologie Appliquée',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Specialised Technician Diploma In Computer Networks',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                SizedBox(width: size.width * 0.2),
                                const Text(
                                  '2019 - 2021',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                width: size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Certifications',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          height: size.height * 0.4,
                          width: size.width * 0.5,
                          child: SmallCertificateCarouselSlide(
                              autoScrollDuration: const Duration(seconds: 3),
                              size: size),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Languages',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        LanguageRoseChart(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Mobilecareer extends StatelessWidget {
  final Size size;
  const Mobilecareer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: size.width * 0.7,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.paleSlate),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Career',
                    style: TextStyle(
                        color: AppColors.paleSlate,
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(height: size.height * 0.02),
              GradientText(
                "Professional\n& Academic",
                colors: const [AppColors.studio, AppColors.paleSlate],
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Professional',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/majorel.png',
                                      height: 30,
                                      width: 50,
                                    ),
                                  ],
                                ),
                                const Text(" Content Support Specialist",
                                    style: TextStyle(
                                        color: AppColors.paleSlate,
                                        fontFamily: 'Poppins',
                                        fontSize: 17)),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Oct 2021 - Nov 2023\nMorocco",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Poppins',
                                            fontSize: 10)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Efficient Customer Assistance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Deliver efficient and courteous technical support across multiple communication channels. \n '),
                                    TextSpan(
                                        text: 'Timely Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Address technical inquiries, issues, and escalations promptly andeffectively. \n '),
                                    TextSpan(
                                        text: 'Product Expertise:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Develop comprehensive product knowledge to offer precise technical assistance. \n '),
                                    TextSpan(
                                        text: 'Performance Optimization:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Meet or surpass key technical performance indicators (KPIs) to ensure customer satisfaction.\n '),
                                    TextSpan(
                                        text: 'Continuous Skill Enhancement:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Stay abreast of technological advancements, product updates, and industry best practices. \n '),
                                    TextSpan(
                                        text: 'Collaborative Problem-Solving:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Collaborate closely with team members and cross-functional teams to resolve complex technical issues and improve overall support effectiveness.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/circet.png',
                                      height: 30,
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                  ],
                                ),
                                const Text(" Internship - IT Support",
                                    style: TextStyle(
                                        color: AppColors.paleSlate,
                                        fontFamily: 'Poppins',
                                        fontSize: 17)),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Feb 2021 - Jun 2023\nMorocco",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Poppins',
                                            fontSize: 10)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            SizedBox(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white60,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Key responsibilities: \n \n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Technical Troubleshooting:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Diagnosed and resolved hardware and software issues for end-users, ensuring minimal downtime and disruption to operations.\n '),
                                    TextSpan(
                                        text: 'Hardware Maintenance:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Installed, configured, and maintained computer systems, peripherals, and network devices, ensuring optimal performance. \n '),
                                    TextSpan(
                                        text: 'Security Measures',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '  Assisted in implementing and enforcing security protocols, including antivirus software, firewalls, and user access controls, to protect against data breaches and cyber threats.\n '),
                                    TextSpan(
                                        text: 'Problem Escalation:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            ' Escalated complex technical issues to senior IT staff or third party support providers when necessary, ensuring timely resolution.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Academic',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: AppColors.paleSlate),
                      ),
                      SizedBox(height: size.height * 0.025),
                      Column(
                        children: [
                          HoverContainer(
                            hoverDecoration: BoxDecoration(
                                border: Border.all(color: AppColors.studio),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            padding: const EdgeInsets.all(35),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.paleSlate),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons/pcz.png',
                                      height: 30,
                                      width: 98,
                                    ),
                                    const Text(
                                      '  Czestochowa University of Technology',
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.009),
                                const Text(
                                  'Master\'s Degree In Quality And Production Management',
                                  style: TextStyle(
                                      color: AppColors.paleSlate,
                                      fontFamily: 'Poppins',
                                      fontSize: 19),
                                ),
                                SizedBox(height: size.height * 0.009),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Poland',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                    Text(
                                      '2023 - Present',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'Poppins',
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icons/fst.png',
                                  height: 30,
                                  width: 99,
                                ),
                                const Text(
                                  '  Faculté des sciences et techniques',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Bachelor\'s Degree In information technology, Networks And Cybersecurity \n (Computer Science)',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                Text(
                                  '2022 - 2023',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      HoverContainer(
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.studio),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.paleSlate),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icons/ofppt.png',
                                  height: 30,
                                  width: 43,
                                ),
                                const Text(
                                  '  L’institut Specialise De Technologie Appliquée',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Text(
                              'Specialised Technician Diploma In Computer Networks',
                              style: TextStyle(
                                  color: AppColors.paleSlate,
                                  fontFamily: 'Poppins',
                                  fontSize: 19),
                            ),
                            SizedBox(height: size.height * 0.009),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Morocco',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                                Text(
                                  '2019 - 2021',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                width: size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Certifications',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          height: size.height * 0.4,
                          width: size.width * 0.5,
                          child: SmallCertificateCarouselSlide(
                              autoScrollDuration: const Duration(seconds: 3),
                              size: size),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Languages',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: AppColors.paleSlate),
                        ),
                        const LanguageRoseChart(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
