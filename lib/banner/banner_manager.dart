import 'package:flutter/material.dart';

class BannerManager {
  show(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
      content: const Text('Meu banner'),
      leading: const Icon(Icons.android),
      onVisible: () {
        Future.delayed(const Duration(seconds: 2)).then((value) =>
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner());
      },
      actions: [
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner(
                  reason: MaterialBannerClosedReason.hide);
            },
            child: const Text('data')),
      ],
    ));
  }
}
