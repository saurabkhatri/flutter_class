import 'package:flutter/material.dart';
import 'package:my_buddies/core/constants/app_images.dart';
import 'package:my_buddies/core/constants/app_strings.dart';
import 'package:my_buddies/features/contacts/widgets/contact_row.dart';


class ContactDetails extends StatefulWidget {
  ContactDetails({required this.index, super.key});

  int index;

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(AppStrings.myFriends[widget.index])),
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: <Widget>[
                // ClipRRect(
                //   child: Image.asset(AppImages.maleProfileImage),
                // ),

                CircleAvatar(backgroundImage: AssetImage(AppImages.femaleprofilepic),radius: 150),
                const SizedBox(
                  height: 16.0,
                ),

                /// Name
                ContactRow(label: "Name", value: AppStrings.myFriends[widget.index],),
                const SizedBox(
                  height: 16.0,


                ),
                ContactRow(label: ("Address"), value: AppStrings.myFriendsAddress[widget.index],),
                const SizedBox(
                  height: 16.0,
                ),

                ContactRow(label:("Email"), value: AppStrings.myFriendsEmail[widget.index],),
                const SizedBox(
                  height: 16.0,
                ),

                ContactRow(label: "Contact", value: AppStrings.myFriendsNum[widget.index],),
                const SizedBox(
                  height: 16.0,
                ),
                /// Address
              ],
            ),
        ),
        );
    }
}