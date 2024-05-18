import 'dart:io';

import 'package:grocery_app/all_imports.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  //updating the image
  // ignore: unused_field
  File? _selectedFile;
  //creating the image picker object
  final ImagePicker imagePicker = ImagePicker();
  _pickImage(ImageSource imageSource)async{
    final file = await imagePicker.pickImage(source: imageSource);
    _selectedFile = File(file!.path);
    setState(() {
      
    });
    
  }
  _backgroundImage(){
      return _selectedFile == null? Assets.personLineAvatar.provider():FileImage(_selectedFile!);
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.075,
          backgroundImage: _backgroundImage(),
          backgroundColor: AppColors.whiteFEFFFE,
        ),
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
                          onTap: (){
                            _pickImage(ImageSource.camera);
                            //poping the modal bottom
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
                          },
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text(AppStrings.addImage, style: AppTextStyles.grey696969_18),
        ),
      ],
    );
  }
}
