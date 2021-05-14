
out vec4 sk_FragColor;
uniform vec4 colorGreen;
uniform vec4 colorRed;
bool test_half_b() {
    bool ok = true;
    mat2x3 m23 = mat2x3(2.0);
    ok = ok && m23 == mat2x3(2.0, 0.0, 0.0, 0.0, 2.0, 0.0);
    mat2x4 m24 = mat2x4(3.0);
    ok = ok && m24 == mat2x4(3.0, 0.0, 0.0, 0.0, 0.0, 3.0, 0.0, 0.0);
    mat3x2 m32 = mat3x2(4.0);
    ok = ok && m32 == mat3x2(4.0, 0.0, 0.0, 4.0, 0.0, 0.0);
    mat3x4 m34 = mat3x4(5.0);
    ok = ok && m34 == mat3x4(5.0, 0.0, 0.0, 0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 5.0, 0.0);
    mat4x3 m43 = mat4x3(7.0);
    ok = ok && m43 == mat4x3(7.0, 0.0, 0.0, 0.0, 7.0, 0.0, 0.0, 0.0, 7.0, 0.0, 0.0, 0.0);
    mat2 m22 = m32 * m23;
    ok = ok && m22 == mat2(8.0);
    mat3 m33 = m43 * m34;
    ok = ok && m33 == mat3(35.0);
    return ok;
}
vec4 main() {
    bool _0_ok = true;
    mat2x3 _1_m23 = mat2x3(2.0);
    _0_ok = _0_ok && _1_m23 == mat2x3(2.0, 0.0, 0.0, 0.0, 2.0, 0.0);
    mat2x4 _2_m24 = mat2x4(3.0);
    _0_ok = _0_ok && _2_m24 == mat2x4(3.0, 0.0, 0.0, 0.0, 0.0, 3.0, 0.0, 0.0);
    mat3x2 _3_m32 = mat3x2(4.0);
    _0_ok = _0_ok && _3_m32 == mat3x2(4.0, 0.0, 0.0, 4.0, 0.0, 0.0);
    mat3x4 _4_m34 = mat3x4(5.0);
    _0_ok = _0_ok && _4_m34 == mat3x4(5.0, 0.0, 0.0, 0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 5.0, 0.0);
    mat4x3 _6_m43 = mat4x3(7.0);
    _0_ok = _0_ok && _6_m43 == mat4x3(7.0, 0.0, 0.0, 0.0, 7.0, 0.0, 0.0, 0.0, 7.0, 0.0, 0.0, 0.0);
    mat2 _7_m22 = _3_m32 * _1_m23;
    _0_ok = _0_ok && _7_m22 == mat2(8.0);
    mat3 _8_m33 = _6_m43 * _4_m34;
    _0_ok = _0_ok && _8_m33 == mat3(35.0);
    return _0_ok && test_half_b() ? colorGreen : colorRed;
}
