import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_pro/res/core/constants/color_constants.dart';
import 'package:quiz_pro/res/core/constants/dimension_constants.dart';
import 'package:quiz_pro/res/core/helpers/asset_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorPalette.slateGray,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TopBar(),
                SearchInput(),
                PromoCard(),
                Headline(),
                CardListView(),
                SHeadline(),
              ],
            ),
          ),
        ));
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "ready_to_test_your_knowledge".tr(),
          style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
           overflow: TextOverflow.ellipsis,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26), blurRadius: 50, spreadRadius: 0, color: Colors.grey.withOpacity(.25)),
          ]),
          child:  CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            // child: Icon(
            //   FontAwesomeIcons.user,
            //   size: 20,
            //   color: Color(0xff53E88B),
            // ),
            child: SvgPicture.asset(AssetHelper.icoUser),
          ),
        )
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(offset: const Offset(12, 26), blurRadius: 50, spreadRadius: 0, color: Colors.grey.withOpacity(.1)),
        ]),
        child: TextField(
          onChanged: (value) {
            //Do something wi
          },
          decoration:  InputDecoration(
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            hintText: 'search'.tr(),
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(colors: [Color(0xff53E88B), Color(0xff15BE77)])),
        child: Stack(
          children: [
            Opacity(
              opacity: .5,
              child: Image.asset(
                  AssetHelper.backgroundCard,
                  fit: BoxFit.cover),
            ),
            Image.asset(AssetHelper.quizz, fit: BoxFit.cover),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "get_started_now".tr(),
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO Thực hiện hành động khi nhấn nút
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Màu của text
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Bo góc của button
                    ),
                  ),
                  child: Text('start_now'.tr()),
                ),
              )
              ,
            )
          ],
        ),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "your_quizzes".tr(),
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
            ),
            Text(
              "start_a_quick_quiz".tr(),
              style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Text(
          "see_all".tr(),
          style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

class SHeadline extends StatefulWidget {
  const SHeadline({super.key, this.topPlayers});
  final List<String>? topPlayers;
  @override
  State<SHeadline> createState() => _SHeadlineState();
}

class _SHeadlineState extends State<SHeadline> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "top_players".tr(),
                  style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
                ),
                Text(
                  "beat_the_best".tr(),
                  style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Text(
              "see_all".tr(),
              style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        const SizedBox(height: 20), // Đảm bảo kDefaultPadding được định nghĩa hoặc thay thế bằng giá trị
        // Visibility(
        //   visible: widget.topPlayers != null,
        //   replacement: Text('topPlayer'.tr()),
        //   child: SizedBox(
        //     height: 200, // Đặt chiều cao cố định cho ListView
        //     child: ListView.builder(
        //       shrinkWrap: true, // Cần thiết khi sử dụng ListView bên trong Column
        //       physics: const NeverScrollableScrollPhysics(), // Tránh cuộn trong trường hợp này
        //       itemCount: widget.topPlayers!.length,
        //       itemBuilder: (context, index) {
        //         return Text(widget.topPlayers![index]);
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}


class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:  const [
            Card(
                text: 'Networking',
                imageUrl: AssetHelper.icoCard1,
                subtitle: "8 min away"),
            Card(
                text: "Project Management",
                imageUrl: AssetHelper.icoCard2,
                subtitle: "12 min away"),
            Card(
                text: "Security",
                imageUrl: AssetHelper.icoCard3,
                subtitle: "30 min away"),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function()? onTap;
  const Card({super.key, required this.text, required this.imageUrl, required this.subtitle, this.onTap});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20), blurRadius: 10, spreadRadius: 0, color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            SvgPicture.asset(imageUrl, height: 70, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                  height: 1
                ),
                maxLines: 2
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
