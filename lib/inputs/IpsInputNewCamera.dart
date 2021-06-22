import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'IpsInput.dart';

class IpsInputNewCamera extends IpsInput {
  final Function(File, Uint8List) _onDone;
  final File file;

  final _IpsInputNewCameraState state = _IpsInputNewCameraState();

  IpsInputNewCamera(this._onDone, this.file);

  @override
  onDone() {
    if (_onDone != null) {
      state.callbackDone(pop: false);
    }
  }
}

class _IpsInputNewCameraState extends State<IpsInputNewCamera> {
  File _selectedFile;

  void callbackDone({bool pop: true}) async {
    if (_selectedFile != null) {
      this.widget._onDone(_selectedFile, _selectedFile.readAsBytesSync());
    }
    if (pop) {
      Navigator.pop(context);
    }
  }

  @override
  initState() {
    super.initState();

    if (this.widget.file != null) {
      _selectedFile = this.widget.file;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _selectedFile = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _selectedFile = image;
    });
  }
}
