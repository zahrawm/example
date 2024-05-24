import 'package:grocery_app/all_imports.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppDimens.px10),
      splashColor: AppColors.whiteFEFFFE,
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.075,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.px10),
          color: AppColors.redFE2E44,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.white_20Bold,
          ),
        ),
      ),
    );
  }
}
