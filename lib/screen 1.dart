import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _MenuPopUpPostsState();
}

class _MenuPopUpPostsState extends State<PopUp> {
  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      margin: EdgeInsets.only(
        top: 50.0,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHandle(context),
            const SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vineyard',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 20, left: 10),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://github.com/abenkoula71/new-project/blob/main/pexels-isaw-company-955733.jpg?raw=true'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                          3,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.table_bar_outlined,
                                    color: Colors.black54,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '20.5 ac',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'area',
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Camera >',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            3,
                            (index) => Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 15),
                                  height: 180,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://github.com/abenkoula71/new-project/blob/main/pexels-cottonbro-studio-4937197.jpg?raw=true'),
                                          fit: BoxFit.cover),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'General \nView',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHandle(BuildContext context) {
    final theme = Theme.of(context);

    return FractionallySizedBox(
      widthFactor: 0.15,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: Container(
          height: 5.0,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }
}
