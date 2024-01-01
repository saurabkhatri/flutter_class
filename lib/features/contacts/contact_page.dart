import 'package:flutter/material.dart';
import 'package:my_buddies/core/constants/app_methods.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_strings.dart';
import 'contact_details.dart';

class ContactPage extends StatefulWidget {
  const ContactPage ({super.key});
  @override
  State<ContactPage > createState() => _contaState();
}

class _contaState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Friends List🙌😬'),),
        body: ListView.builder(
            itemCount: AppStrings.myFriends.length,
            itemBuilder: (context,index)
            {
              return InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>ContactDetails(
                          index : index
                      )
                      )
                  );
                },
                child: friendName(name:AppStrings.myFriends[index],
                    email:AppStrings.myFriendsEmail[index],
                    address:AppStrings.myFriendsAddress[index],
                    contact:AppStrings.myFriendsNum[index]),);
            }
        )
    );
  }

  Widget friendName({required String name,required String email,String? address,required String contact}){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,style: TextStyle(fontSize: 24),),
                  IconButton(
                      onPressed: (){
                        AppMethods.launchCaller(actionMsg: 'tel: 9865916920');
                        print("Iconx button clicked");
                      },
                      icon: Icon(Icons.call)
                  )
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(address ?? "******",style: TextStyle(fontSize: 24),),
                  IconButton(
                      onPressed: (){
                        AppMethods.launchCaller(actionMsg: 'mailto: $email' );
                        print("Iconx button clicked");
                      },
                      icon: Icon(Icons.email_outlined)
                  )
                ],

              ),
            ],
          ),
        )),
    );

    }
}