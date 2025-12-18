import 'package:flutter/material.dart';
import 'package:gradation/BranchListPage.dart';

class GradientScaffoldPage extends StatelessWidget {
  const GradientScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ▼ user-defined: あなたが自分で定義したグラデーション設定
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,      // ここは「画面上側スタート」
          end: Alignment.bottomCenter,     // ここは「画面下側に向かう」
          colors: [
            Color(0xFFFFC0CB), // ピンク（user-defined 色）
            Color(0xFFB0005B), // 暗いピンク（user-defined 色）
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // ← これが大事：透明にして裏の背景を見せる
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Gradient Scaffold"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BranchListPage(
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.folder),
                      SizedBox(width: 4,),
                      Text(
                        '三苫薫',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => {}, 
                  child:Text('Iphone16pro'),
                ),
                MaterialButton(
                  onPressed: () => {}, 
                  child: Text('data'),
                ),
                FloatingActionButton(
                  onPressed: () => {},
                  child: Text('data'),
                  backgroundColor: Colors.transparent,
                ),
                Card(
                  child: Text('data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
