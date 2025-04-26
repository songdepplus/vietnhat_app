
import 'package:flutter/material.dart';
import 'report_screen.dart';
import 'notification_screen.dart';

class DashboardScreen extends StatelessWidget {
  final String userRole;

  DashboardScreen({required this.userRole});

  List<String> _getReportOptions() {
    switch (userRole) {
      case 'Bác sĩ':
        return ['Danh sách bệnh nhân', 'Doanh thu khám', 'Hiệu suất khám'];
      case 'Kỹ thuật viên':
        return ['Danh sách dịch vụ cần thực hiện', 'Hiệu suất kỹ thuật viên'];
      case 'Kho':
        return ['Tồn kho vật tư', 'Cảnh báo hết hạn'];
      case 'Kế toán':
        return ['Tổng hợp doanh thu', 'Chi tiết thanh toán'];
      case 'Tư vấn viên':
        return ['Khách cần chăm sóc', 'Tỉ lệ tái khám'];
      case 'Marketing':
        return ['Nguồn khách', 'Chiến dịch quảng bá'];
      default:
        return ['Báo cáo tổng hợp'];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> options = _getReportOptions();

    return Scaffold(
      appBar: AppBar(
        title: Text('Xin chào, $userRole'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              title: Text(options[index], style: TextStyle(fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportScreen(reportType: options[index])),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
