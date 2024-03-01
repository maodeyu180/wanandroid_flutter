import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/common/common_utils.dart';
import 'package:wan_android_flutter/models/user_info_entity.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';
import 'package:wan_android_flutter/net/wan_exception.dart';
import 'package:wan_android_flutter/providers/user_provider.dart';

///@author ： 于德海
///time ： 2024/2/22 17:08
///desc ：
final _tag = "LoginPage";
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  late bool isLogin;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    isLogin = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(isLogin ? "登录" : "注册"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _usernameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入用户名",
                  icon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "密码", hintText: "请输入密码", icon: Icon(Icons.lock)),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  _login().then((value) {
                    if(value){
                      Navigator.of(context).pop();
                    }
                  });
                },
                child: Text("登录")),
          )
        ],
      ),
    );
  }

  Future<bool> _login() async {
    if (_usernameController.value.text.isEmpty) {
      EasyLoading.showToast("用户名不能为空");
      return false;
    }
    if (_passwordController.value.text.isEmpty) {
      EasyLoading.showToast("密码不能为空");
      return false;
    }
    EasyLoading.show(status: "登录中...");
    try{
      UserInfoEntity infoEntity = await WanApis.login(
              _usernameController.value.text, _passwordController.value.text);
      AppConfig.userInfo = infoEntity;
      if(context.mounted){
        Provider.of<UserProvider>(context,listen: false).updateUserInfo(infoEntity.username!, infoEntity.password!);
      }
    }catch(e){
      EasyLoading.dismiss();

      if(e is WanException){
        EasyLoading.showToast(e.message!);

      }else{
        EasyLoading.showToast(e.toString());
      }
      tagPrint(_tag, e.toString());
      return false;

    }
    EasyLoading.dismiss();

    EasyLoading.showToast("登录成功");
    return true;
  }
}
