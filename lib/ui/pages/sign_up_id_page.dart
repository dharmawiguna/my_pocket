import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pocket/blocs/auth/auth_bloc.dart';
import 'package:my_pocket/models/sign_up_form_model.dart';
import 'package:my_pocket/shared/shared_methods.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';

class SignUpSetIdPage extends StatefulWidget {
  final SignUpFormModel data;

  const SignUpSetIdPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<SignUpSetIdPage> createState() => _SignUpSetIdPageState();
}

class _SignUpSetIdPageState extends State<SignUpSetIdPage> {
  XFile? selectedImage;

  bool validate() {
    // if (selectedImage == null) {
    //   return false;
    // }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showCustomSnackBar(context, state.e);
          }

          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              Container(
                width: 155,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 100,
                  bottom: 100,
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/my_pocket_logo.png'),
                )),
              ),
              Text(
                "Verify Your\n Acccount",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final image = await selectImage();
                        setState(() {
                          selectedImage = image;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBackgroundColor,
                          image: selectedImage == null
                              ? null
                              : DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    File(
                                      selectedImage!.path,
                                    ),
                                  ),
                                ),
                        ),
                        child: selectedImage != null
                            ? null
                            : Center(
                                child: Image.asset(
                                  'assets/icon_upload.png',
                                  width: 32,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Passport/ID Card",
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomFilledButton(
                      title: "Continue",
                      onPressed: () {
                        if (validate()) {
                          context.read<AuthBloc>().add(
                                AuthRegister(
                                  widget.data.copyWith(
                                      ktp: selectedImage == null
                                          ? null
                                          : 'data:image/png;base64,/9j${base64Encode(
                                              File(selectedImage!.path)
                                                  .readAsBytesSync(),
                                            )}'),
                                ),
                              );
                        } else {
                          showCustomSnackBar(context, "Image is required");
                        }
                      },
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomTextButton(
                      title: "Skip For Now",
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              AuthRegister(widget.data),
                            );
                        // Navigator.pushNamed(context, "/sign-up-success");
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
