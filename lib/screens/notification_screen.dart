import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<String> dummyNotifications = [
    'Bạn có 1 bệnh nhân mới được chỉ định khám.',
    'Kho vật tư: Vật tư A sắp hết, cần nhập thêm.',
    'Kỹ thuật viên: Có ca vật lý trị liệu cần xử lý.',
    'Doanh thu hôm nay đã đạt 10 triệu đồng!',
    'Bệnh nhân B cần tái khám trong tuần này.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông báo hệ thống'),
      ),
      body: ListView.builder(
        itemCount: dummyNotifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.notifications_active, color: Colors.blue),
              title: Text(
                dummyNotifications[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}

