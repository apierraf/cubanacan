import 'package:cubanacan/widgets/explorer/tab_view.dart';
import 'package:flutter/material.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: InnerTab(),
      ),
    );
  }
}
