import 'package:flutter/material.dart';

class BranchListPage extends StatefulWidget {
  const BranchListPage({
    super.key,
  });

  @override
  State<BranchListPage> createState() => BranchListPageState();
}

class BranchListPageState extends State<BranchListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,      // ここは「画面上側スタート」
          end: Alignment.bottomCenter,     // ここは「画面下側に向かう」
          colors: [
            Color.fromARGB(255, 249, 136, 194),
            // Color.fromARGB(255, 0, 19, 125), // 暗いピンク（user-defined 色）
            Color.fromARGB(255, 0, 204, 255), 
            // Color.fromARGB(255, 255, 255, 255), 
            // Color(0xFFFFC0CB), // ピンク（user-defined 色）
            Color.fromARGB(193, 0, 5, 79),
          ],
        ),
      ),      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon( 
                Icons.call_split,
                size: 32,
                color: Colors.white,
              ),
              const SizedBox(width:4),
              const Text(
                'ブランチ一覧',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                'ブランチ一覧',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              // ここで分岐込みのUIを作る
              _buildBranchesList(context),
            ],
          ),
        ), 
      ),
    );
  }

    // ブランチ一覧を作成するウィジェット
  Widget _buildBranchesList(BuildContext context) {
        return Column(
          children: [
            //　上部ボタン群
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      backgroundColor: const Color.fromARGB(68, 255, 255, 255),
                      elevation: 0,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown, // 枠より大きければ縮小するオプション
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            // Icons.account_tree_outlined,
                            Icons.account_tree_outlined,
                            size: 24,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'グラフ表示',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16), // ボタン間の余白
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.blue,
                      backgroundColor:Color.fromARGB(115, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      elevation: 0,
                    ),
                    child: FittedBox(
                      // fit: BoxFit.scaleDown, // 枠より大きければ縮小するオプション
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.call_split,
                            size: 24,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          const Text(
                            'ブランチ新規作成',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            BranchCard(
              branchTitle: 'branchTitle',
              branchDescription: 'b.branchDescription',
              parentCommitTitle: 'b.parentCommitTitle',
              parentCommitId: 'b.parentCommitId',
              elapsed: 'elapsed',
              onBranchCardTap: () {},

              onBranchRenameTap: () {},

              onBranchEditDescriptionTap: () {},

              onDetailTap: () {},

              onBranchDeleteTap: () {
              },
            ),
            BranchCard(
              branchTitle: 'branchTitle',
              branchDescription: 'b.branchDescription',
              parentCommitTitle: 'b.parentCommitTitle',
              parentCommitId: 'b.parentCommitId',
              elapsed: 'elapsed',
              onBranchCardTap: () {},

              onBranchRenameTap: () {},

              onBranchEditDescriptionTap: () {},

              onDetailTap: () {},

              onBranchDeleteTap: () {
              },
            ),
            BranchCard(
              branchTitle: 'branchTitle',
              branchDescription: 'b.branchDescription',
              parentCommitTitle: 'b.parentCommitTitle',
              parentCommitId: 'b.parentCommitId',
              elapsed: 'elapsed',
              onBranchCardTap: () {},

              onBranchRenameTap: () {},

              onBranchEditDescriptionTap: () {},

              onDetailTap: () {},

              onBranchDeleteTap: () {
              },
            ),
            BranchCard(
              branchTitle: 'branchTitle',
              branchDescription: 'b.branchDescription',
              parentCommitTitle: 'b.parentCommitTitle',
              parentCommitId: 'b.parentCommitId',
              elapsed: 'elapsed',
              onBranchCardTap: () {},

              onBranchRenameTap: () {},

              onBranchEditDescriptionTap: () {},

              onDetailTap: () {},

              onBranchDeleteTap: () {
              },
            ),
          ],
        );
      }
    //-------------------------------------------------------------------------------------------------
  }

// ブランチのリスト項目を構築するウィジェット（ブランチカード）
class BranchCard extends StatelessWidget {
  final dynamic branchTitle;
  final dynamic branchDescription;
  final String parentCommitId;
  final String parentCommitTitle;
  final String elapsed;//(ブランチが作られてからどれくらい経過したかを表す文字列)

  final VoidCallback? onBranchCardTap;
  final VoidCallback? onBranchRenameTap;
  final VoidCallback? onBranchEditDescriptionTap;
  final VoidCallback? onDetailTap; 
  final VoidCallback? onBranchDeleteTap;

  const BranchCard({
    required this.branchTitle,
    required this.branchDescription,
    required this.parentCommitId,
    required this.parentCommitTitle,
    required this.elapsed,   
    required this.onBranchCardTap, 
    required this.onBranchRenameTap,
    required this.onBranchEditDescriptionTap,
    required this.onDetailTap,
    required this.onBranchDeleteTap,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      // ここでカードの色を動的に設定
      color: const Color.fromARGB(41, 255, 255, 255),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(46)),
      child: InkWell(
        onTap: onBranchCardTap, // カード全体をタップした後の画面遷移を書く
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.call_split,
                    size: 40,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          branchTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          branchDescription,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '派生元コミットID:$parentCommitId',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '派生元コミットタイトル: $parentCommitTitle',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '更新日時: $elapsed',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              // const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PopupMenuButton(
                    color: const Color.fromARGB(162, 255, 255, 255),
                    style: ButtonStyle(
                      // elevation: ,
                    ),
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),// ケバブアイコン
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),// 角の丸みを調整（数値はお好みで）
                    ),
                    elevation: 8,
                    // color: Colors.white,
                    onSelected: (String result) {
                      // メニューの項目の選択に応じて処理を振り分けます。
                      switch (result) {
                        case 'rename':
                          onBranchRenameTap!();
                          break;
                        case 'edit_description':
                          onBranchEditDescriptionTap!();
                          break;
                        case 'detail':
                          onDetailTap!();
                        case 'delete':
                          onBranchDeleteTap!();
                          break;                   
                      }
                    },
                    // メニュー項目（PopupMenuEntry<T>のリスト）を作成
                    itemBuilder: (BuildContext content) => <PopupMenuEntry<String>> [
                      // 名前変更
                      const PopupMenuItem<String>(
                        value: 'rename',
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.drive_file_rename_outline),
                            Text(
                              '名前の変更',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),                      
                      //　説明編集
                      const PopupMenuItem<String>(
                          value: 'edit_description',
                          child: Row(
                            children: [
                              Icon(Icons.edit_note),
                              Text(
                                '説明の編集',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ]
                          ),
                      ), 
                      // ブランチの詳細
                      const PopupMenuItem<String>(
                        value: 'detail',
                        child: Row(
                          children: [
                            Icon(Icons.info_outline_rounded),
                            Text(
                              'ブランチの詳細',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),                
                      // 区切り線
                     const PopupMenuDivider(),                      
                      // 削除
                      PopupMenuItem<String>(
                          value: 'delete',
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                              ),
                              Text(
                                '削除',
                                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), // 削除は赤字にすると分かりやすい
                              ),
                            ]
                          ),
                      ),                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
