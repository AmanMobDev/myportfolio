import '../../../../config/export/export.dart';

void showCustomDialog(BuildContext context) {
  var screenWidth = MediaQuery.sizeOf(context).width;
  var screenHeight = MediaQuery.sizeOf(context).height;
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController queryController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Submit the form
  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      PushNotificationService().sendPushNotification(
        name: fullNameController.text,
        query: queryController.text,
      );

      context.read<ServiceBloc>().add(
        AddServiceEvent(
          fullName: fullNameController.text,
          email: emailController.text,
          mobile: mobileController.text,
          query: queryController.text,
        ),
      );
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Form has errors')));
    }
  }

  // Validation function for the username text field
  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required!';
    }
    if (!RegExp(r'^[A-Za-z0-9]+$').hasMatch(value)) {
      return 'Username should contain only letters and numbers!';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required!';
    }
    if (!RegExp(r'^[a-zA-Z0-9]+@gmail\.com$').hasMatch(value)) {
      return 'Please enter a valid email!';
    }
    return null;
  }

  // Validation function for the mobile number
  String? _validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number is required!';
    }
    // Check if the number contains exactly 10 digits (adjust the length as needed)
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit mobile number!';
    }
    return null;
  }

  // Use showGeneralDialog to customize dialog position
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Barrier",
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation1, animation2) {
      return Align(
        alignment: Alignment.center,
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                spacing: 20.0,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8.0,
                    ),
                    child: Center(
                      child: CustomTextWidget(
                        value: "Tell us about your requirement",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          spacing: 20.0,
                          children: [
                            CustomTextField(
                              controller: fullNameController,
                              hintText: "John Doe",
                              labelText: "Full Name",
                              borderColor: AppColor.black,
                              validate: _validateUsername,
                            ),
                            CustomTextField(
                              controller: mobileController,
                              keyboardType: TextInputType.phone,
                              hintText: "+91 1234567890",
                              labelText: "Mobile Number",
                              borderColor: AppColor.black,
                              validate: _validateMobileNumber,
                            ),
                            CustomTextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              hintText: "example@mail.com",
                              labelText: "Email",
                              borderColor: AppColor.black,
                              validate: _validateEmail,
                            ),
                            CustomTextField(
                              controller: queryController,
                              hintText: "Submit query here...",
                              labelText: "Query",
                              minLines: 5,
                              borderColor: AppColor.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _submitForm();
                    },
                    child: Center(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5.0,
                        color: AppColor.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: SizedBox(
                          width: screenWidth * 0.2,
                          height: 50.0,
                          child: const Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(anim1),
        child: child,
      );
    },
  );
}
