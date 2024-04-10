import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class BirdTitle extends StatelessWidget {
  const BirdTitle({
    Key? key,
    required this.title,
    required this.latin,
    required this.family,
    required this.desc,
    required this.count,
    required this.source,
    required this.author,
    required this.authorLink,
    required this.author2,
    required this.authorLink2,
  }) : super(key: key);

  final String title,
      latin,
      family,
      desc,
      source,
      author,
      authorLink,
      author2,
      authorLink2;
  final int count;
  @override
  Widget build(BuildContext context) {
    //var authorLink = "some link";
    // var authorLink = "https://commons.wikimedia.org/wiki/User:Alnus";
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 3.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).brightness == Brightness.dark
                        ? TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )
                        : TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 43, 43, 43),
                            fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: "$latin\n",
                    style: Theme.of(context).brightness == Brightness.dark
                        ? TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )
                        : TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 43, 43, 43),
                            fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: locale == 'ru'
                        ? "Сем. $family\n\n"
                        : "Family $family\n\n",
                    style: Theme.of(context).brightness == Brightness.dark
                        ? TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )
                        : TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 43, 43, 43),
                            fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: desc,
                    style: Theme.of(context).brightness == Brightness.dark
                        ? TextStyle(color: Colors.white, fontSize: 16)
                        : TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 43, 43, 43)),
                  ),
                  if (source != "") ...[
                    TextSpan(
                        text: locale == 'ru' ? '\n\nИсточник' : '\n\nSource',
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(source),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: const WebViewConfiguration(
                                  enableJavaScript: false),
                            );
                          }),
                  ],
                  if (authorLink != "") ...[
                    TextSpan(
                        text: locale == 'ru'
                            ? '\n\nФото: $author'
                            : "'\n\nPhoto: $author'",
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(authorLink),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: const WebViewConfiguration(
                                  enableJavaScript: false),
                            );
                          }),
                  ] else ...[
                    if (author != "")
                      TextSpan(
                        text: locale == 'ru'
                            ? "\n\nФото: $author"
                            : "\n\nPhoto: $author",
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                      )
                  ],
                  if (authorLink2 != "") ...[
                    TextSpan(
                        text: locale == 'ru'
                            ? '\n\nФото2: $authorLink2'
                            : '\n\nPhoto 2: $authorLink2',
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(authorLink2),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: const WebViewConfiguration(
                                  enableJavaScript: false),
                            );
                          }),
                  ] else ...[
                    if (author2 != "")
                      TextSpan(
                        text: locale == 'ru'
                            ? '\n\nФото2: $authorLink2'
                            : '\n\nPhoto 2: $authorLink2',
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                      )
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
