import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';
import 'package:my_pocket/ui/widget/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contextLocal = context;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_profile.png',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: whiteColor),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Dharma Wiguna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_edit_profile.png',
                  title: "Edit Profile",
                  onTap: () async {
                    if (await Navigator.pushNamed(contextLocal, "/pin") ==
                        true) {
                      Navigator.pushNamed(contextLocal, "/profile-edit");
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_my_pin.png',
                  title: "My Pin",
                  onTap: () async {
                    if (await Navigator.pushNamed(contextLocal, "/pin") ==
                        true) {
                      Navigator.pushNamed(contextLocal, "/profile-edit-pin");
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_wallet_setting.png',
                  title: "Wallet Settings",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_my_reward.png',
                  title: "My Rewards",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_help.png',
                  title: "Help Center",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icon_logout.png',
                  title: "Log out",
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: "Report a Problem",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
