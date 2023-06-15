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

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
                height: 20,
                color: currentIndex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).shadowColor,
              ),
              label: "Feeds",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/market.svg',
                color: currentIndex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).shadowColor,
                height: 20,
              ),
              label: "Market",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                color: currentIndex == 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).shadowColor,
                height: 20,
              ),
              label: "Profile",
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBtn(
              onTap: () {},
              accentColor: primaryColor,
              height: 50,
              borderRadius: BorderRadius.circular(8),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              text: 'Add to cart',
              textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
              textColor: textColor.withOpacity(1),
              width: 180,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    borderRadius: BorderRadius.circular(18),
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
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
                            ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                ),
                CustomIconButton(
                  padding: const EdgeInsets.only(
                    right: 25,
                  ),
                  borderSide: BorderSide(
                    color: Theme.of(context).dividerColor,
                    width: 2,
                  ),
                  icon: Icon(
                    Icons.wallet,
                    color: Theme.of(context).dividerColor,
                  ),
                  margin: const EdgeInsets.all(0),
                  width: 60,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
