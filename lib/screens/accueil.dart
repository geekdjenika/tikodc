import 'package:flutter/material.dart';
import 'package:tikodc/widgets/home_side_bar.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  bool _isPourtoiSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {

          },
          icon: Icon(
            Icons.live_tv_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {

            },
            icon: Icon(
              Icons.search_rounded
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => {
                setState(() {
                  _isPourtoiSelected = false;
                })
              },
              child: Text(
                "Abonnements",
                style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(
                  fontSize: !_isPourtoiSelected ? 18 : 15,
                  color: !_isPourtoiSelected ? Colors.white : Colors.grey
                ),
              ),
            ),
            Text("    "),
            GestureDetector(
              onTap: () => {
                setState(() {
                  _isPourtoiSelected = true;
                })
              },
              child: Text(
                "Pour toi",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(
                    fontSize: _isPourtoiSelected ? 18 : 15,
                    color: _isPourtoiSelected ? Colors.white : Colors.grey
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
          onPageChanged: (int page) => {print("Page changé en $page")},
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: Colors.purple,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.75,
                    color: Colors.pink,
                    child: HomeSideBar(),
                  ),
                ),
              ],
            )
          ],
        );
      })
    );
  }
}
