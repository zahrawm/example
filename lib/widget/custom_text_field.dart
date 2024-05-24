import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/helper/sized_box_helper.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final String errorMessage;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    required this.iconData,
    required this.errorMessage
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.075,
          decoration: BoxDecoration(
            color: AppColors.whiteFEFFFE,
            border: Border.all(
              color: AppColors.grey696969.withOpacity(0.1),
              width: AppDimens.px1,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey696969.withOpacity(0.05),
                blurRadius: AppDimens.px5,
                spreadRadius: AppDimens.px5,
              ),
            ],
            borderRadius: BorderRadius.circular(AppDimens.px10),
          ),
          padding: EdgeInsets.symmetric(horizontal: AppDimens.px10),
          child: Row(
            children: [
              Icon(iconData, color: AppColors.redFF7E8B),
              SizedBoxHelper.sizedBox_10,
              Expanded(
                child: TextFormField(
                  cursorWidth: 0.5,
                  onChanged: onChanged,
                  obscureText: obscureText,
                  controller: controller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: suffixIcon,
                    labelText: hintText,
                    hintText: hintText,
                    hintStyle: AppTextStyles.grey696969_18,
                  ),
                ),
              ),
            ],
          ),
        ),
     if(errorMessage.isEmpty)
      Text("errorMessage", style: AppTextStyles.redFE2E44_15),
      SizedBoxHelper.sizedBox10,
      ],
    );
  }
}
