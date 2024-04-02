import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'The first version of Flutter was known as "Sky"[8] and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit[9] with the stated intent of being able to render consistently at 120 frames per second.[10] During the keynote of Google Developer Days in Shanghai in September 2018,',
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'more',
      trimExpandedText: 'less',
      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
    );
  }
}
