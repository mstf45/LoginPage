import 'package:flutter/material.dart';

class LoginPagess extends StatefulWidget {
  const LoginPagess({Key? key}) : super(key: key);

  @override
  State<LoginPagess> createState() => _LoginPagessState();
}

class _LoginPagessState extends State<LoginPagess> {
  late bool _passwordVisible;
  late TextEditingController mailController;
  late TextEditingController passwordController;
  late bool isActive;
  @override
  void initState() {
    _passwordVisible = true;
    isActive = true;
    mailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var genislik = ekran.size.width;
    var yukseklik = ekran.size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(121, 234, 153, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: yukseklik / 12),
        child: Container(
          height: yukseklik,
          width: genislik,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(36),
              topLeft: Radius.circular(36),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Stack(
                      children: [
                        Container(
                          height: 11,
                          width: 54,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 210,
                      height: 210,
                      child: Image.asset('assets/images/telefonLoginPage.png'),
                    ),
                  ],
                ),
                const Text(
                  'Getting Started',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 24,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Let’s login for explore continues',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 12,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 39),
                const Text(
                  'Email or Phone Number',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 13,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: mailController,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.check_circle,
                      color: Color.fromRGBO(121, 234, 153, 1),
                    ),
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 13,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscuringCharacter: '●',
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(
                        _passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      onTap: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  obscureText: !_passwordVisible,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Color.fromRGBO(243, 96, 96, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: genislik,
                  height: yukseklik / 18,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(121, 234, 153, 1),
                      ),
                      elevation: MaterialStateProperty.all(8),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.33,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Don’t have an acount?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          letterSpacing: -0.33,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: const TextSpan(
                          text: ' Sign Up here',
                          style: TextStyle(
                            color: Color.fromRGBO(121, 234, 153, 1),
                            fontSize: 12,
                            letterSpacing: -0.33,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
