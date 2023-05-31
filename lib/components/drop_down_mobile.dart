import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownMenuForMobileWidget extends StatefulWidget {
  const DropDownMenuForMobileWidget({Key? key}) : super(key: key);

  @override
  State<DropDownMenuForMobileWidget> createState() =>
      _DropDownMenuForMobileWidgetState();
}

class _DropDownMenuForMobileWidgetState
    extends State<DropDownMenuForMobileWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton2(
            customButton: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.list,
                size: 27,
                color: Colors.white,
                // icon color
              ),
            ),
            items: [
              ...MenuItems.firstItems.map(
                (item) => DropdownMenuItem<MenuItem>(
                  value: item,
                  child: MenuItems.buildItem(item),
                ),
              ),
              // DropdownMenuItem<Divider>(
              //   enabled: false,
              //   child: SizedBox(),
              //   // child: Divider(),
              // ),
              // ...MenuItems.secondItems.map(
              //   (item) => DropdownMenuItem<MenuItem>(
              //     value: item,
              //     child: MenuItems.buildItem(item),
              //   ),
              // ),
            ],
            onChanged: (value) {
              MenuItems.onChanged(context, value as MenuItem);
            },
            dropdownStyleData: DropdownStyleData(
              width: double.infinity,
              // height of menu items
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xff1D1D1D),
              ),
              elevation: 8,
              // offset: const Offset(0, 8),
            ),
            menuItemStyleData: MenuItemStyleData(
              customHeights: [
                ...List<double>.filled(MenuItems.firstItems.length, 48),
                // 8,
                // ...List<double>.filled(MenuItems.secondItems.length, 48),
              ],
              padding: const EdgeInsets.only(left: 16, right: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings, logout];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'About me', icon: Icons.home);
  static const share = MenuItem(text: 'Skills', icon: Icons.share);
  static const settings = MenuItem(text: 'Portfolio', icon: Icons.settings);
  static const logout = MenuItem(text: 'Contact Me', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        break;
      case MenuItems.settings:
        //Do something
        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.logout:
        //Do something
        break;
    }
  }
}
