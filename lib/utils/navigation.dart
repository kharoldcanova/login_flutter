import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar(
    this.currentIndex, {
    super.key,
  });
  final Function currentIndex;
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: CustomColors.whitePalette,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: CustomColors.blackColor,
        // type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            label: 'Pedidos',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'Productos',
            icon: Icon(Icons.apple),
          ),
          BottomNavigationBarItem(
            label: 'Empresa',
            icon: Icon(Icons.add_business_rounded),
          ),
        ],
      ),
    );
  }
}
