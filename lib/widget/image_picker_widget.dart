import 'dart:io';

import 'package:grocery_app/all_imports.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  final String errorMessage;
  final Function(File) getProfileImage;
  final File? file;
  const ImagePickerWidget({Key? key, required this. errorMessage,
   required this.getProfileImage,required this. file}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  //updating the image
  // ignore: unused_field
  File? _selectedFile;
  // a image picker object for the app
 final ImagePicker imagePicker = ImagePicker();
 _pickImage(ImageSource imageSource)async{
 // ignore: unused_local_variable
 final file =  await imagePicker.pickImage(source: imageSource);
 widget.getProfileImage(File(file!.path));
 
 }
 _backgroundImage(){
  return  widget.file == null ? Assets.personLineAvatar.provider():FileImage
  (widget.file!);
 }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.075,
          backgroundImage: _backgroundImage(),
          backgroundColor: AppColors.whiteFEFFFE,
        ),
        Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return SizedBox(
                        height: AppDimens.px120,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(AppStrings.camera),
                              onTap: () {
                                _pickImage(ImageSource.camera);
                                Navigator.of(context).pop();
                              },
                            ),
                            Divider(
                              height: AppDimens.px1,color: AppColors.black000000,
                            ),
                            ListTile(
                              title: Text(AppStrings.gallery),
                              onTap: (){
                                _pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              }
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(AppStrings.addImage, style: AppTextStyles.grey696969_18),
            ),
             if(widget.errorMessage.isEmpty)
      Text(widget.errorMessage , style: AppTextStyles.redFE2E44_15),
      SizedBoxHelper.sizedBox10,
          ],
        ),
        
      ],
    );
  }
}
