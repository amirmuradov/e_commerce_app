// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/widgets/cart.dart';
import 'package:e_commerce_app/widgets/circle_tab_indicator.dart';
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
          height: 70,
          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            unselectedLabelStyle: TextStyle(
              color: Theme.of(context).shadowColor,
            ),
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
                  height: 30,
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
                  height: 30,
                ),
                label: "Market",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: currentIndex == 2
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).shadowColor,
                  height: 30,
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Text(
                  "Market",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontFamily: "NotoSans-Medium",
                      ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                      baseColor: Theme.of(context).shadowColor,
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                            color: Theme.of(context).scaffoldBackgroundColor,
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
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  controller: tabController,
                  isScrollable: true,
                  unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                  labelColor: Theme.of(context).hintColor,
                  labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        fontFamily: "NotoSans-Medium",
                      ),
                  indicator: CircleTabIndicator(
                    color: Theme.of(context).primaryColor,
                    radius: 4,
                  ),
                  tabs: const [
                    Tab(text: "Featured"),
                    Tab(text: "Collections"),
                    Tab(text: "Stores"),
                    Tab(text: "Tags"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 5,
                      ),
                      child: Cart(
                        color: Theme.of(context).dividerColor,
                        text: 'On Sale',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).canvasColor,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 15,
                      ),
                      child: Cart(
                        color: Theme.of(context).focusColor,
                        text: 'New',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 5,
                      ),
                      child: Cart(
                        text: 'Clothing',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 15,
                      ),
                      child: Cart(
                        text: 'Shoes',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 5,
                      ),
                      child: Cart(
                        text: 'Accessories',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 15,
                      ),
                      child: Cart(
                        text: 'Sport',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 5,
                      ),
                      child: Cart(
                        text: 'Personal Care',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 15,
                      ),
                      child: Cart(
                        text: 'Special',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
