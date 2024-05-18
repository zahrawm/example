import 'package:grocery_app/all_imports.dart';

class ScreenBackground extends StatelessWidget {
  final List<Widget> children;
  const ScreenBackground({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteFEFFFE,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: AppDimens.px20, right: AppDimens.px20,top: MediaQuery.of(context).padding.top),
                child: Column(
                  children: children,
                ),
              ),
              Assets.poster.image(),
            ],
          ),
        ),
      ),
    );
  }
}
