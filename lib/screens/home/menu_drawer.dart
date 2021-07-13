part of '../home.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF0399a7),
                Color(0xFF5abb39),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/user/dashatar.jpg'),
                    child: Align(
                      alignment: Alignment(1.0, 1.0),
                      child: Tooltip(
                        message: 'Verified',
                        child: Icon(
                          Icons.verified_user_rounded,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'John F. Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ...menuItems.map((e) => ListTile(leading: e.icon, title: Text(e.title), trailing: Icon(Icons.arrow_right_rounded), onTap: () {})).toList(),
      ],
    );
  }
}
