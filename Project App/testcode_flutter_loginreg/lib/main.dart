import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Image.asset('assets/logo.png', height: 80), // Logo
                    const SizedBox(height: 16),
                    const Text(
                      'Selamat Datang Kembali',
                      style: TextStyle(
                        color: Color(0xFFFF8A00),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),

              // Bagian Form Login
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF8A00),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const Text(
                      'Masukkan email dan kata sandi anda\nuntuk masuk',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 24),

                    // Form
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Email
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Masukkan Email Anda',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email wajib diisi';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          // Password
                          TextFormField(
                            controller: _passwordController,
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              labelText: 'Kata Sandi',
                              hintText: 'Masukkan Kata Sandi Anda',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Kata sandi wajib diisi';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),

                          // Tombol Masuk
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Berhasil Login (Dummy)'),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFC58B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 60,
                              ),
                            ),
                            child: const Text(
                              'Masuk',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Divider
                          Row(
                            children: const [
                              Expanded(child: Divider(color: Colors.white)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Atau',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(child: Divider(color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // Tombol Masuk Google
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/google_icon.png',
                              height: 24,
                            ),
                            label: const Text('Masuk dengan Google'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFC58B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Link Daftar
                          GestureDetector(
                            onTap: () {},
                            child: const Text.rich(
                              TextSpan(
                                text: 'Belum Punya Akun? ',
                                children: [
                                  TextSpan(
                                    text: 'Daftar Disini',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),

                          const Text(
                            'Dengan masuk, Anda menyetujui kebijakan dan privasi dari aplikasi Hamim.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
