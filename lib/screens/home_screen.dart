import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_api_generator_flutter/api.dart';
import 'package:open_api_generator_flutter/components/text_form_field_decoration.dart';
import 'package:open_api_generator_flutter/utils/snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isProgress = false;

  final TextEditingController domainController = TextEditingController();
  final TextEditingController organisationNameController =
      TextEditingController();
  final TextEditingController organisationIdController =
      TextEditingController();
  final TextEditingController governmentIdController = TextEditingController();

  Future createOrganisation() async {
    setState(() {
      isProgress = true;
    });
    try {
      var data = await DefaultApi().organizationControllerRegisterWithHttpInfo(
        CreateOrganizationRequestDto(
          domain: domainController.text.trim(),
          organizationName: organisationNameController.text.trim(),
          organizationIDFileLink: organisationIdController.text.trim(),
          governmentIDFileLink: governmentIdController.text.trim(),
        ),
      );
      log("data: ${data.statusCode}$data");
      if (data.statusCode == 201) {
        setState(() {
          isProgress = false;
        });
        showSnackBar(snackBarType: SnackBarType.success, content: 'Success',);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                "Success",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }
      }
    } catch (e) {
      setState(() {
        isProgress = false;
      });
      showSnackBar(snackBarType: SnackBarType.error, content: e.toString(),);

    }

    domainController.clear();
    organisationNameController.clear();
    organisationIdController.clear();
    governmentIdController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          'Create Organisation',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textField(
                context: context,
                title: 'Domain',
                controller: domainController,
              ),
              textField(
                context: context,
                title: 'Organization Name',
                controller: organisationNameController,
              ),
              textField(
                context: context,
                title: 'Organization ID',
                controller: organisationIdController,
              ),
              textField(
                context: context,
                title: 'Government ID',
                controller: governmentIdController,
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (domainController.text.trim().isEmpty) {
                    showSnackBar(
                      snackBarType: SnackBarType.error,
                      content: 'Enter Domain!!',
                    );
                    return;
                  }

                  if (organisationNameController.text.trim().isEmpty) {
                    showSnackBar(
                      snackBarType: SnackBarType.error,
                      content: 'Enter organisation name!!',
                    );
                    return;
                  }

                  if (organisationIdController.text.trim().isEmpty) {
                    showSnackBar(
                      snackBarType: SnackBarType.error,
                      content: 'Enter organisation Id!!',
                    );
                    return;
                  }

                  if (governmentIdController.text.trim().isEmpty) {
                    showSnackBar(
                      snackBarType: SnackBarType.error,
                      content: 'Enter government Id!!',
                    );
                    return;
                  }

                  await createOrganisation();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent),
                child: isProgress
                    ? const CupertinoActivityIndicator()
                    : const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField({
    required BuildContext context,
    required String title,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          decoration: textFormFieldInputDecoration(context: context).copyWith(
            hintText: title,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
