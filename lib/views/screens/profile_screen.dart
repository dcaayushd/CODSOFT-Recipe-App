import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../views/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import '../widgets/user_info_tile.dart';

class ProfileScreen extends StatefulWidget {
  final Function(String) onProfileImageUpdate;

  const ProfileScreen({super.key, required this.onProfileImageUpdate});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  bool _isEditing = false;
  String _imagePath = '';
  String _email = '';
  String _fullName = '';
  final ImagePicker _picker = ImagePicker();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _imagePath = prefs.getString('profileImagePath') ?? '';
      _email = prefs.getString('email') ?? '';
      _fullName = prefs.getString('fullName') ?? '';
      _emailController.text = _email;
      _fullNameController.text = _fullName;
    });
  }

  _saveProfileData() async {
    if (_emailController.text.isEmpty || _fullNameController.text.isEmpty) {
      _showSnackBar('Full Name and Email cannot be empty.');
      return;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileImagePath', _imagePath);
    await prefs.setString('email', _emailController.text);
    await prefs.setString('fullName', _fullNameController.text);
    setState(() {
      _email = _emailController.text;
      _fullName = _fullNameController.text;
      _isEditing = false;
    });
    widget.onProfileImageUpdate(_imagePath);
  }

  Future<void> _pickImage() async {
    if (_isEditing) {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _imagePath = image.path;
        });
      }
    } else {
      _showSnackBar('Please tap "Edit" to change your profile picture.');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 700),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style:
              TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.secondary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('My Profile',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                if (_isEditing) {
                  _saveProfileData();
                } else {
                  _isEditing = true;
                }
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Text(
              _isEditing ? 'Save' : 'Edit',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // Profile Picture Wrapper
          Container(
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: GestureDetector(
              onTap: _pickImage,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: _imagePath.isNotEmpty
                            ? FileImage(File(_imagePath))
                            : const AssetImage('assets/images/profile.jpg')
                                as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Change Profile Picture',
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/camera.svg',
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          ),
          // User Info Wrapper
          Container(
            margin: const EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _isEditing
                    ? _buildEditableUserInfoTile(
                        label: 'Email',
                        controller: _emailController,
                        hint: 'Enter your email address',
                      )
                    : GestureDetector(
                        onTap: () => _showSnackBar(
                            'Please tap "Edit" to change your email.'),
                        child: UserInfoTile(
                          margin: const EdgeInsets.only(bottom: 16),
                          label: 'Email',
                          value: _email.isEmpty
                              ? 'Enter your email address'
                              : _email,
                          child: Text(
                            _email.isEmpty
                                ? 'Enter your email address'
                                : _email,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'inter',
                              color:
                                  _email.isEmpty ? Colors.grey : Colors.black,
                            ),
                          ),
                        ),
                      ),
                _isEditing
                    ? _buildEditableUserInfoTile(
                        label: 'Full Name',
                        controller: _fullNameController,
                        hint: 'Enter your name',
                      )
                    : GestureDetector(
                        onTap: () => _showSnackBar(
                            'Please tap "Edit" to change your name.'),
                        child: UserInfoTile(
                          margin: const EdgeInsets.only(bottom: 16),
                          label: 'Full Name',
                          value:
                              _fullName.isEmpty ? 'Enter your name' : _fullName,
                          child: Text(
                            _fullName.isEmpty ? 'Enter your name' : _fullName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'inter',
                              color:
                                  _email.isEmpty ? Colors.grey : Colors.black,
                            ),
                          ),
                        ),
                      ),
                UserInfoTile(
                  margin: const EdgeInsets.only(bottom: 16),
                  label: 'Subscription Type',
                  value: 'Premium Subscription',
                  valueBackground: AppColor.secondary,
                ),
                const UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Subscription Time',
                  value: 'Until 31 Dec 2025',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildEditableUserInfoTile({
    required String label,
    required TextEditingController controller,
    required String hint,
  }) {
    return UserInfoTile(
      margin: const EdgeInsets.only(bottom: 16),
      label: label,
      value: '',
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'inter',
        ),
      ),
    );
  }
}
