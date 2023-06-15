// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/widgets/custom_btn.dart';
import 'package:e_commerce_app/theme.dart';
import 'package:e_commerce_app/widgets/custom_textfield.dart';
import 'package:e_commerce_app/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 65,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 25,
                  color: currentIndex == 0
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).shadowColor,
                ),
                label: "Feed",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/market.svg',
                  color: currentIndex == 1
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).shadowColor,
                  height: 25,
                ),
                label: "Market",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: currentIndex == 2
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).shadowColor,
                  height: 25,
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Text(
                "Market",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).shadowColor,
                      fontFamily: "NotoSans-SemiBold",
                    ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    borderRadius: BorderRadius.circular(15),
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    controller: TextEditingController(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    onChanged: (vers) {},
                    hint: "Search on Tassel",
                    textStyle:
                        Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).dividerColor,
                              fontFamily: "NotoSans-Regular",
                            ),
                    suffixIcon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: Theme.of(context).dividerColor,
                      height: 25,
                    ),
                  ),
                ),
                CustomIconButton(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  borderSide: BorderSide(
                    color: Theme.of(context).dividerColor,
                    width: 2,
                  ),
                  icon: const Icon(Icons.search),
                  margin: const EdgeInsets.all(0),
                  width: 60,
                  height: 55,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(text: "Featured"),
                  Tab(text: "Collections"),
                  Tab(text: "Stores"),
                  Tab(text: "Tags"),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              child: TabBarView(
                controller: tabController,
                children: [
                  Text("hi"),
                  Text("hi"),
                  Text("hi"),
                  Text("hi"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
