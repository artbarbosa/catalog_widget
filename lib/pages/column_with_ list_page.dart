import 'package:flutter/material.dart';

import '../cards/simple_card.dart';

class ColumnWithList extends StatelessWidget {
  const ColumnWithList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SimpleCard(
                    imageUrl: '',
                    subtitle: 'Sei la',
                    title: 'Real ne pai',
                    icon: Icons.home,
                    onTap: () {},
                  )),
            ),
            Expanded(
              flex: 8,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 15,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) => ListTile(
                  title: Text('Item $index'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ver Resultado'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
