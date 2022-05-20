import 'package:flutter/material.dart';

class BottomSheetDrag extends StatelessWidget {
  const BottomSheetDrag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade400,
      ),
      body: Stack(
        children: [
          const Center(
            child: Text('Conteudo Principal'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.3,
              maxChildSize: 0.6,
              builder: (context, scrollController) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.separated(
                    controller: scrollController,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
