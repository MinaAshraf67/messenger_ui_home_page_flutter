// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white.withOpacity(0.0),
        ),
        toolbarHeight: 70.0,
        titleSpacing: 20.0,
        //AppBar Design
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/123026044_3317904291620665_1882089118573316446_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=GRaRksZCOSAAX_Qk5l2&tn=D2G6d8v2T_d8iA9z&_nc_ht=scontent.fcai19-4.fna&oh=00_AT-HbEbQymdypL0WXR3Yqansf8HrFtN4YSVhYOgPUMICgQ&oe=63109FE3'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          //Camera Icon Button
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 60.0,
              backgroundColor: Color(0xfff6f6f6),
              child: Icon(
                Icons.camera_alt,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          //New Message Icon Button
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Color(0xfff6f6f6),
              radius: 60.0,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xfff6f6f6),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xff989898),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Color(0xff747474),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //* Stories Container
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 25,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //* Chats Container
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Stories UI
  Widget buildStoryItem() => Container(
        width: 50.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/123026044_3317904291620665_1882089118573316446_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=GRaRksZCOSAAX_Qk5l2&tn=D2G6d8v2T_d8iA9z&_nc_ht=scontent.fcai19-4.fna&oh=00_AT-HbEbQymdypL0WXR3Yqansf8HrFtN4YSVhYOgPUMICgQ&oe=63109FE3'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              'Mina Ashraf Rzek',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
  //Chat UI
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/123026044_3317904291620665_1882089118573316446_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=GRaRksZCOSAAX_Qk5l2&tn=D2G6d8v2T_d8iA9z&_nc_ht=scontent.fcai19-4.fna&oh=00_AT-HbEbQymdypL0WXR3Yqansf8HrFtN4YSVhYOgPUMICgQ&oe=63109FE3'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8.5,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 7.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mina Ashraf ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello My name s mina Ashraf Hello My name s mina Ashraf Hello My name s mina Ashraf Hello My name s mina Ashraf',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    CircleAvatar(
                      radius: 1.5,
                      backgroundColor: Colors.grey[500],
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      '00:56',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 60.0,
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
