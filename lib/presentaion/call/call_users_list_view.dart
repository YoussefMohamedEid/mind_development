import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentaion/call/call_model/contant_model.dart';
import 'package:flutter_application_1/presentaion/call/call_user_view.dart';
import 'package:url_launcher/url_launcher.dart';

class CallUsersListView extends StatelessWidget {
  const CallUsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: SafeArea(
          child: Text(
            "Call the people you love",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Text(
              "Call and Talk to the people you love",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(height: 24),
            Expanded(
              child: ListView.separated(
                
                itemBuilder: (c, n) {
                  return ItemCallInList(
                    contact: contactList[n],
                  );
                },
                separatorBuilder: (c, n) {
                  return Divider(height: 24);
                },
                itemCount: contactList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCallInList extends StatelessWidget {
  const ItemCallInList({super.key,required this.contact});
final ContactModel contact;
Future<void> callNumber(String phoneNumber) async {
  final Uri uri = Uri.parse('tel:$phoneNumber');

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  } else {
    throw 'Cannot launch phone dialer';
  }
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async { await
        callNumber(contact.number);},
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(contact.image),
            radius: 32,
            backgroundColor: Colors.amberAccent,
          ),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                contact.subTitle,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallUserView()),
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 28,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 26,
                child: Icon(Icons.call, size: 32, color: Colors.red),
              ),
            ),
          ),
         // SizedBox(width: 12),
          // CircleAvatar(
          //   backgroundColor: Colors.red,
          //   radius: 28,
          //   child: Icon(Icons.video_call, size: 32, color: Colors.white),
          // ),
        ],
      ),
    );
  }
}
