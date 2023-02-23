import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewLogin extends StatefulWidget {
  const ViewLogin({Key? key}) : super(key: key);

  @override
  State<ViewLogin> createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;

  Widget _rowAlignLeft(
      {required Widget child, required double vertical, double? horizontal}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: vertical, horizontal: horizontal ?? 0.0),
      alignment: Alignment.centerLeft,
      child: child,
    );
  }

  Widget _checkBox() {
    return _rowAlignLeft(
      vertical: 0.0,
      horizontal: 4.0,
      child: Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text(
            "SALVAR DISPOSITIVO",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
            ),
          ),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: isChecked,
          checkColor: Colors.white,
          activeColor: Colors.blue,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ),
    );
  }

  Widget withEmailPassword() {
    return Form(
      // key: _controller.formKey,
      child: Card(
        color: Colors.green,
        elevation: 5,
        shadowColor: Colors.lightGreenAccent,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  // controller: _controller.emailController,
                  decoration: InputDecoration(
                    labelText: "e-mail",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 5.0),
                    ),
                  ),
                  // validator: (String val) {
                  //   if (val.isEmpty) {
                  //     return "Por favor informe o e-mail!";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                // controller: _controller.senhaController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: "Senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
                //                 decoration: InputDecoration(
                //   enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         width: 3, color: Colors.greenAccent), //<-- SEE HERE
                //   ),
                // ),
                // validator: (String val) {
                //   if (val.isEmpty) {
                //     return "Por favor informe a senha!";
                //   }
                //   return null;
                // },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(color: Colors.black),
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    alignment: Alignment.center,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFF001B43),
                        shadowColor: Colors.blue,
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Text(
                        "ENTRAR",
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        // if (_controller.formKey.currentState.validate()) {
                        //   _signinWithEmailPassword();
                        // }
                      },
                    ),
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(unselectedWidgetColor: Colors.white),
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text(
                        "SALVAR DISPOSITIVO",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.4,
                        ),
                      ),
                      checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      value: isChecked,
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                withEmailPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
