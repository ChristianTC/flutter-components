import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title:
                _sliderEnabled ? const Text('Disable') : const Text('Enable'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() {
          //     _sliderEnabled = value;
          //   }),
          // ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title:
                _sliderEnabled ? const Text('Disable') : const Text('Enable'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                width: _sliderValue,
                fit: BoxFit.contain,
                image:
                    const NetworkImage('https://fondosmil.com/fondo/24595.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
