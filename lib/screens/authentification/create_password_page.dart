import 'package:flutter/material.dart';
import '../../localizations.dart';
import '../authentification/disclaimer_page.dart';
import '../../widgets/password_visibility_control.dart';
import '../../widgets/primary_button.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({Key key, @required this.seed}) : super(key: key);

  final String seed;

  @override
  _CreatePasswordPageState createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  final FocusNode _focus1 = FocusNode();
  final FocusNode _focus2 = FocusNode();
  bool isLoading = false;
  bool isValidPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool isObscured = true;

  @override
  void initState() {
    controller2.addListener(_onChange);
    controller1.addListener(_onChange);
    super.initState();
  }

  void _onChange() {
    final String text = controller1.text;
    final String text2 = controller2.text;
    if (text.isEmpty ||
        text2.isEmpty ||
        !_formKey.currentState.validate() ||
        controller1.text != controller2.text ||
        controller1.text.length < 12 ||
        controller2.text.length < 12) {
      setState(() {
        isValidPassword = false;
      });
    } else {
      setState(() {
        isValidPassword = true;
      });
    }
  }

  bool _validateInputs() {
    // Only validate if the user has entered atleast 3 characters.
    if (controller1.text.length < 3) {
      return false;
    }
    if (_formKey.currentState.validate()) {
      // If all data are correct then save data to out variables
      _formKey.currentState.save();
      return true;
    } else {
      // If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: Form(
        key: _formKey,
        autovalidateMode:
            _autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          children: <Widget>[
            Text(
              AppLocalizations.of(context).titleCreatePassword,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 24),
            TextFormField(
              key: const Key('create-password-field'),
              maxLength: 40,
              focusNode: _focus1,
              controller: controller1,
              onFieldSubmitted: (String term) {
                _fieldFocusChange(context, _focus1, _focus2);
                _validateInputs();
              },
              onChanged: (value) {
                _validateInputs();
              },
              textInputAction: TextInputAction.next,
              autocorrect: false,
              enableInteractiveSelection: true,
              toolbarOptions: ToolbarOptions(
                paste: controller1.text.isEmpty,
                copy: false,
                cut: false,
                selectAll: false,
              ),
              obscureText: isObscured,
              validator: (String arg) {
                final RegExp exp =
                    RegExp(r'^(?:(?=.*[a-z])(?=.*[A-Z])(?=.*\W)).{12,}$');
                return !arg.contains(exp)
                    ? AppLocalizations.of(context).passwordRequirement
                    : null;
              },
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                errorMaxLines: 6,
                hintText: AppLocalizations.of(context).hintPassword,
                suffixIcon: PasswordVisibilityControl(
                  onVisibilityChange: (bool isPasswordObscured) {
                    setState(() {
                      isObscured = isPasswordObscured;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Builder(builder: (BuildContext context) {
              return TextFormField(
                key: const Key('create-password-field-confirm'),
                maxLength: 40,
                controller: controller2,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                focusNode: _focus2,
                obscureText: isObscured,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(
                  paste: controller2.text.isEmpty,
                  copy: false,
                  cut: false,
                  selectAll: false,
                ),
                onFieldSubmitted: (String data) {
                  _checkValidation(context);
                },
                style: Theme.of(context).textTheme.bodyText2,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).hintConfirmPassword,
                ),
              );
            }),
            const SizedBox(height: 16),
            Builder(builder: (BuildContext context) {
              return Column(
                children: <Widget>[
                  PrimaryButton(
                    key: const Key('confirm-password'),
                    text: AppLocalizations.of(context).confirmPassword,
                    onPressed: isValidPassword
                        ? () => _checkValidation(context)
                        : null,
                    isLoading: isLoading,
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  void _checkValidation(BuildContext context) {
    if (_validateInputs()) {
      if (controller1.text == controller2.text) {
        _nextPage();
      } else {
        _showError(context, AppLocalizations.of(context).wrongPassword);
      }
    }
  }

  Future<void> _nextPage() async {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => DisclaimerPage(
                password: controller1.text,
                seed: widget.seed,
                onSuccess: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false,
                      arguments: ScreenArguments(controller1.text));
                },
              )),
    );
  }

  void _showError(BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: Theme.of(context).errorColor,
      content: Text(data),
    ));
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}

class ScreenArguments {
  ScreenArguments(
    this.password,
  );
  final String password;
}
