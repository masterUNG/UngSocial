import 'package:flutter/material.dart';
import 'package:ungsocial/states/create_account.dart';
import 'package:ungsocial/utility/my_constant.dart';
import 'package:ungsocial/widgets/show_button.dart';
import 'package:ungsocial/widgets/show_form.dart';
import 'package:ungsocial/widgets/show_image.dart';
import 'package:ungsocial/widgets/show_text.dart';
import 'package:ungsocial/widgets/show_text_button.dart';

class Authen extends StatelessWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        child: Container(
          decoration: MyConstant().planBox(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newImage(),
                newText(),
                newEmail(),
                newPassword(),
                newLoginButton(),
                newCreateAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row newCreateAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowText(
          label: 'Non Account ?',
          textStyle: MyConstant().h2Style(),
        ),
        ShowTextButton(
          label: ' Create Account',
          pressFunc: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateAccount(),
                ));
          },
        ),
      ],
    );
  }

  ShowButton newLoginButton() => ShowButton(
        label: 'Login',
        pressFunc: () {},
      );

  ShowForm newPassword() {
    return ShowForm(
      obscue: true,
      label: 'Password :',
      iconData: Icons.lock_outline,
    );
  }

  ShowForm newEmail() {
    return ShowForm(
      label: 'Email :',
      iconData: Icons.mail_outline,
    );
  }

  ShowText newText() {
    return ShowText(
      label: 'Login :',
      textStyle: MyConstant().h1Style(),
    );
  }

  SizedBox newImage() {
    return const SizedBox(
      width: 120,
      child: ShowImage(),
    );
  }
}
