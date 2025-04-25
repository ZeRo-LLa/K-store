import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/images/t_circular_image.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Profile'), showBackArrow: true),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, height: 80, width: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: TSize.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),
              // Heading Profile info
              const TSectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              TProfileMenu(title: 'Name', value: 'Illia', onPressed: () {}),
              TProfileMenu(
                title: 'Username',
                value: 'ZeRoLLa',
                onPressed: () {},
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),
              //Heading Perdonal info
              TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              TProfileMenu(
                title: 'User ID',
                value: '525252',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'mushyk.illia.s@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+380983457395',
                onPressed: () {},
              ),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                title: 'Date of Birth',
                value: '20 Jan, 2007',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
