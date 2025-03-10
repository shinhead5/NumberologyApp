import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'soul_urge_model.dart';
export 'soul_urge_model.dart';

class SoulUrgeWidget extends StatefulWidget {
  const SoulUrgeWidget({super.key});

  static String routeName = 'SoulUrge';
  static String routePath = '/soulUrge';

  @override
  State<SoulUrgeWidget> createState() => _SoulUrgeWidgetState();
}

class _SoulUrgeWidgetState extends State<SoulUrgeWidget> {
  late SoulUrgeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoulUrgeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: FlutterFlowWebView(
            content:
                '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Numerology Soul Urge Number Calculator</title>\n  <style>\n    * {\n      margin: 0;\n      padding: 0;\n      box-sizing: border-box;\n      font-family: \'Roboto\', \'Open Sans\', sans-serif;\n    }\n    \n    body {\n      background-color: #121212;\n      color: white;\n      display: flex;\n      flex-direction: column;\n      align-items: center;\n      justify-content: flex-start;\n      min-height: 100vh;\n      padding: 20px;\n    }\n    \n    .header {\n      background: linear-gradient(to right, #ffcca5, #ff7f50, #ffcca5);\n      width: 100%;\n      max-width: 600px;\n      border-radius: 15px;\n      padding: 25px 0;\n      text-align: center;\n      margin-bottom: 40px;\n    }\n    \n    .header h1 {\n      font-size: 24px;\n      font-weight: bold;\n      margin-bottom: 10px;\n    }\n    \n    .header p {\n      font-size: 16px;\n      opacity: 0.9;\n    }\n    \n    .calculator-container {\n      width: 100%;\n      max-width: 600px;\n      display: flex;\n      flex-direction: column;\n      gap: 25px;\n    }\n    \n    .input-group {\n      display: flex;\n      flex-direction: column;\n      gap: 8px;\n    }\n    \n    .input-group label {\n      font-size: 16px;\n      margin-bottom: 5px;\n    }\n    \n    .input-field {\n      background-color: #2a2a2a;\n      border: 1px solid #3a3a3a;\n      border-radius: 8px;\n      padding: 15px;\n      color: white;\n      font-size: 16px;\n      width: 100%;\n    }\n    \n    .input-field::placeholder {\n      color: #8a8a8a;\n    }\n    \n    button {\n      background: linear-gradient(to right, #ffcca5, #ff7f50, #ffcca5);\n      border: none;\n      border-radius: 8px;\n      padding: 15px;\n      color: white;\n      font-size: 18px;\n      font-weight: bold;\n      cursor: pointer;\n      margin-top: 15px;\n      transition: all 0.3s ease;\n    }\n    \n    button:hover {\n      opacity: 0.9;\n      transform: translateY(-2px);\n    }\n    \n    .result-container {\n      margin-top: 30px;\n      background-color: #2a2a2a;\n      border-radius: 8px;\n      padding: 20px;\n      width: 100%;\n      text-align: center;\n      display: none;\n    }\n    \n    .result-container h2 {\n      margin-bottom: 15px;\n      font-size: 20px;\n    }\n    \n    .result-number {\n      font-size: 48px;\n      font-weight: bold;\n      color: #ff7f50;\n      margin: 10px 0;\n    }\n    \n    .result-meaning {\n      font-size: 16px;\n      line-height: 1.5;\n      margin-top: 20px;\n    }\n  </style>\n</head>\n<body>\n  <div class=\"header\">\n    <h1>Numerology Soul Urge Number Calculator</h1>\n    <p>Discover the hidden desires that drive your life\'s purpose</p>\n  </div>\n  \n  <div class=\"calculator-container\">\n    <div class=\"input-group\">\n      <label for=\"fullName\">Enter Your Full Name</label>\n      <input type=\"text\" id=\"fullName\" class=\"input-field\" placeholder=\"Your full name as it appears on your birth certificate\">\n    </div>\n    \n    <button id=\"calculateBtn\">Calculate My Soul Urge Number</button>\n    \n    <div class=\"result-container\" id=\"resultContainer\">\n      <h2>Your Soul Urge Number Is</h2>\n      <div class=\"result-number\" id=\"soulUrgeNumber\">-</div>\n      <div class=\"result-meaning\" id=\"numberMeaning\"></div>\n    </div>\n  </div>\n\n  <script>\n    document.getElementById(\'calculateBtn\').addEventListener(\'click\', calculateSoulUrge);\n    \n    function calculateSoulUrge() {\n      const fullName = document.getElementById(\'fullName\').value.trim();\n      \n      if (!fullName) {\n        alert(\"Please enter your full name\");\n        return;\n      }\n      \n      // Soul Urge calculation uses only vowels\n      const vowels = {\'a\': 1, \'e\': 5, \'i\': 9, \'o\': 6, \'u\': 3, \'y\': 7};\n      \n      let sum = 0;\n      const processedName = fullName.toLowerCase();\n      \n      for (let i = 0; i < processedName.length; i++) {\n        const char = processedName[i];\n        if (vowels[char] !== undefined) {\n          sum += vowels[char];\n        }\n      }\n      \n      // Reduce to a single digit, except for master numbers 11, 22\n      let soulUrgeNumber = sum;\n      while (soulUrgeNumber > 9 && soulUrgeNumber !== 11 && soulUrgeNumber !== 22 && soulUrgeNumber !== 33) {\n        let tempSum = 0;\n        String(soulUrgeNumber).split(\'\').forEach(digit => {\n          tempSum += parseInt(digit);\n        });\n        soulUrgeNumber = tempSum;\n      }\n      \n      document.getElementById(\'soulUrgeNumber\').textContent = soulUrgeNumber;\n      document.getElementById(\'numberMeaning\').textContent = getSoulUrgeMeaning(soulUrgeNumber);\n      document.getElementById(\'resultContainer\').style.display = \'block\';\n    }\n    \n    function getSoulUrgeMeaning(number) {\n      const meanings = {\n        1: \"You desire independence, leadership, and originality. You\'re driven by ambition and the need to forge your own path.\",\n        2: \"You seek harmony, cooperation, and balance in life. Your inner desire is to connect with others and form deep relationships.\",\n        3: \"Your soul craves self-expression, creativity, and joy. You desire to communicate, entertain, and inspire others.\",\n        4: \"You seek stability, order, and security. Your inner desire is to build solid foundations and achieve through discipline and hard work.\",\n        5: \"You crave freedom, adventure, and change. Your soul desires varied experiences and resists limitations or routine.\",\n        6: \"You seek harmony, beauty, and nurturing relationships. Your inner desire is to protect, support, and care for others.\",\n        7: \"You crave knowledge, wisdom, and spiritual understanding. Your soul desires solitude, analysis, and deeper meaning.\",\n        8: \"You seek abundance, achievement, and recognition. Your inner desire is to attain material success and authority.\",\n        9: \"You crave universal love, compassion, and humanitarian service. Your soul desires to make a lasting difference in the world.\",\n        11: \"As a Master Number, you have a heightened desire for spiritual insight and enlightenment. You seek to inspire others through your intuitive abilities.\",\n        22: \"As a Master Number, you desire to build meaningful structures that benefit humanity. You have the potential to manifest grand visions and create lasting legacies.\",\n        33: \"As a Master Number, you desire to nurture and elevate humanity through compassionate teaching and healing. You seek to express unconditional love and wisdom.\"\n      };\n      \n      return meanings[number] || \"This number represents a unique combination of energies in your soul\'s desires.\";\n    }\n  </script>\n</body>\n</html>',
            height: 812.2,
            verticalScroll: false,
            horizontalScroll: false,
            html: true,
          ),
        ),
      ),
    );
  }
}
