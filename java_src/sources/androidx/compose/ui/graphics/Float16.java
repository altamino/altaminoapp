package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Float16 implements Comparable<Float16> {
    private static final int FP16_COMBINED = 32767;
    private static final int FP16_EXPONENT_BIAS = 15;
    private static final int FP16_EXPONENT_MASK = 31;
    private static final int FP16_EXPONENT_MAX = 31744;
    private static final int FP16_EXPONENT_SHIFT = 10;
    private static final int FP16_SIGNIFICAND_MASK = 1023;
    private static final int FP16_SIGN_MASK = 32768;
    private static final int FP16_SIGN_SHIFT = 15;
    private static final float FP32_DENORMAL_FLOAT;
    private static final int FP32_DENORMAL_MAGIC = 1056964608;
    private static final int FP32_EXPONENT_BIAS = 127;
    private static final int FP32_EXPONENT_MASK = 255;
    private static final int FP32_EXPONENT_SHIFT = 23;
    private static final int FP32_QNAN_MASK = 4194304;
    private static final int FP32_SIGNIFICAND_MASK = 8388607;
    private static final int FP32_SIGN_SHIFT = 31;
    public static final int MaxExponent = 15;
    public static final int MinExponent = -14;
    public static final int Size = 16;
    private final short halfValue;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final short Epsilon = d(5120);
    private static final short LowestValue = d(-1025);
    private static final short MaxValue = d(31743);
    private static final short MinNormal = d(1024);
    private static final short MinValue = d(1);
    private static final short NaN = d(32256);
    private static final short NegativeInfinity = d(-1024);
    private static final short NegativeZero = d(kotlin.jvm.internal.s0.MIN_VALUE);
    private static final short PositiveInfinity = d(31744);
    private static final short PositiveZero = d(0);
    private static final short One = c(1.0f);
    private static final short NegativeOne = c(-1.0f);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(short s) {
            return (s & kotlin.jvm.internal.s0.MIN_VALUE) != 0 ? 32768 - (s & w7.i0.MAX_VALUE) : s & w7.i0.MAX_VALUE;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final short c(float f) {
            int i10;
            int iFloatToRawIntBits = Float.floatToRawIntBits(f);
            int i11 = iFloatToRawIntBits >>> 31;
            int i12 = (iFloatToRawIntBits >>> 23) & 255;
            int i13 = Float16.FP32_SIGNIFICAND_MASK & iFloatToRawIntBits;
            int i14 = 31;
            int i15 = 0;
            if (i12 == 255) {
                if (i13 != 0) {
                    i15 = 512;
                }
            } else {
                int i16 = i12 - 112;
                if (i16 >= 31) {
                    i14 = 49;
                } else if (i16 <= 0) {
                    if (i16 >= -10) {
                        int i17 = (8388608 | i13) >> (1 - i16);
                        if ((i17 & 4096) != 0) {
                            i17 += 8192;
                        }
                        i14 = 0;
                        i15 = i17 >> 13;
                    } else {
                        i14 = 0;
                    }
                } else {
                    i15 = i13 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i10 = (((i16 << 10) | i15) + 1) | (i11 << 15);
                    } else {
                        i14 = i16;
                    }
                    return (short) i10;
                }
            }
            i10 = (i11 << 15) | (i14 << 10) | i15;
            return (short) i10;
        }
    }

    public static short d(short s) {
        return s;
    }

    public static boolean e(short s, Object obj) {
        return (obj instanceof Float16) && s == ((Float16) obj).k();
    }

    public static int f(short s) {
        return s;
    }

    public static final boolean h(short s) {
        return (s & kotlin.jvm.internal.s0.MAX_VALUE) > FP16_EXPONENT_MAX;
    }

    public boolean equals(Object obj) {
        return e(this.halfValue, obj);
    }

    public int hashCode() {
        return f(this.halfValue);
    }

    public final /* synthetic */ short k() {
        return this.halfValue;
    }

    static {
        kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
        FP32_DENORMAL_FLOAT = Float.intBitsToFloat(FP32_DENORMAL_MAGIC);
    }

    public static short c(float f) {
        return d(Companion.c(f));
    }

    public int a(short s) {
        return b(this.halfValue, s);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Float16 float16) {
        return a(float16.k());
    }

    @NotNull
    public String toString() {
        return j(this.halfValue);
    }

    public static int b(short s, short s5) {
        if (h(s)) {
            return !h(s5) ? 1 : 0;
        }
        if (h(s5)) {
            return -1;
        }
        Companion companion = Companion;
        return kotlin.jvm.internal.t.l(companion.d(s), companion.d(s5));
    }

    public static final float i(short s) {
        int i10;
        int i11;
        int i12;
        int i13 = Short.MIN_VALUE & s;
        int i14 = ((65535 & s) >>> 10) & 31;
        int i15 = s & 1023;
        if (i14 == 0) {
            if (i15 != 0) {
                kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
                float fIntBitsToFloat = Float.intBitsToFloat(i15 + FP32_DENORMAL_MAGIC) - FP32_DENORMAL_FLOAT;
                if (i13 != 0) {
                    return -fIntBitsToFloat;
                }
                return fIntBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        } else {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        }
        int i18 = (i12 << 23) | (i13 << 16) | i11;
        kotlin.jvm.internal.m mVar2 = kotlin.jvm.internal.m.INSTANCE;
        return Float.intBitsToFloat(i18);
    }

    @NotNull
    public static String j(short s) {
        return String.valueOf(i(s));
    }
}
