// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/cake_shop_list_ui.dart';
 
class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});
 
  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}
 
class _SplashScreenUIState extends State<SplashScreenUI> {
 
  @override
  void initState() {
    // หน่วงเวลาหน้าจอ 3 วิ แล้วเปิดไป CakeShopListUI แบบย้อนกลับไมได้
    Future.delayed(
      // ระยะเวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      // คำสั่งเมื่อครบเวลาที่หน่วง ในที่จะให้เปิดไปหน้าจอที่กำหนดไว้
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CakeShopListUI(),
          ),
        );
      }
    );
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ชั้นที่ 1 แสดงรูปพื้นหลัง
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg_welcome.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // ชั้นที่ 2 แสดงชื่อแอปฯ แสดง ProgressIndicator
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text(
                  'สายด่วนกินเค้ก',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.048,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'CAKE CALL FAST',
                  style: TextStyle(
                    color: const Color.fromARGB(191, 244, 67, 54),
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                CircularProgressIndicator(
                  color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}