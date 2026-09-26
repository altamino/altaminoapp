package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes10.dex */
class CamColor {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float mAstar;
    private final float mBstar;
    private final float mChroma;
    private final float mHue;
    private final float mJ;
    private final float mJstar;
    private final float mM;
    private final float mQ;
    private final float mS;

    @Nullable
    private static CamColor b(@FloatRange float f, @FloatRange float f6, @FloatRange float f7) {
        float f10 = 100.0f;
        float f11 = 1000.0f;
        float f12 = 0.0f;
        CamColor camColor = null;
        float f13 = 1000.0f;
        while (Math.abs(f12 - f10) > 0.01f) {
            float f14 = ((f10 - f12) / 2.0f) + f12;
            int iP = e(f14, f6, f).p();
            float fB = CamUtils.b(iP);
            float fAbs = Math.abs(f7 - fB);
            if (fAbs < 0.2f) {
                CamColor camColorC = c(iP);
                float fA = camColorC.a(e(camColorC.k(), camColorC.i(), f));
                if (fA <= 1.0f) {
                    camColor = camColorC;
                    f11 = fAbs;
                    f13 = fA;
                }
            }
            if (f11 == 0.0f && f13 == 0.0f) {
                break;
            }
            if (fB < f7) {
                f12 = f14;
            } else {
                f10 = f14;
            }
        }
        return camColor;
    }

    @NonNull
    private static CamColor f(@FloatRange float f, @FloatRange float f6, @FloatRange float f7, ViewingConditions viewingConditions) {
        double d = ((double) f) / 100.0d;
        float fB = (4.0f / viewingConditions.b()) * ((float) Math.sqrt(d)) * (viewingConditions.a() + 4.0f) * viewingConditions.d();
        float fD = f6 * viewingConditions.d();
        float fSqrt = ((float) Math.sqrt(((f6 / ((float) Math.sqrt(d))) * viewingConditions.b()) / (viewingConditions.a() + 4.0f))) * 50.0f;
        float f10 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float fLog = ((float) Math.log((((double) fD) * 0.0228d) + 1.0d)) * 43.85965f;
        double d2 = (3.1415927f * f7) / 180.0f;
        return new CamColor(f7, f6, f, fB, fD, fSqrt, f10, fLog * ((float) Math.cos(d2)), fLog * ((float) Math.sin(d2)));
    }

    @ColorInt
    static int n(@FloatRange float f, @FloatRange float f6, @FloatRange float f7, @NonNull ViewingConditions viewingConditions) {
        if (f6 < 1.0d || Math.round(f7) <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE || Math.round(f7) >= 100.0d) {
            return CamUtils.a(f7);
        }
        float fMin = f < 0.0f ? 0.0f : Math.min(360.0f, f);
        CamColor camColor = null;
        boolean z6 = true;
        float f10 = 0.0f;
        float f11 = f6;
        while (Math.abs(f10 - f6) >= CHROMA_SEARCH_ENDPOINT) {
            CamColor camColorB = b(fMin, f11, f7);
            if (!z6) {
                if (camColorB == null) {
                    f6 = f11;
                } else {
                    f10 = f11;
                    camColor = camColorB;
                }
                f11 = ((f6 - f10) / 2.0f) + f10;
            } else {
                if (camColorB != null) {
                    return camColorB.o(viewingConditions);
                }
                f11 = ((f6 - f10) / 2.0f) + f10;
                z6 = false;
            }
        }
        return camColor == null ? CamUtils.a(f7) : camColor.o(viewingConditions);
    }

    @FloatRange
    float g() {
        return this.mAstar;
    }

    @FloatRange
    float h() {
        return this.mBstar;
    }

    @FloatRange
    float i() {
        return this.mChroma;
    }

    @FloatRange
    float j() {
        return this.mHue;
    }

    @FloatRange
    float k() {
        return this.mJ;
    }

    @FloatRange
    float l() {
        return this.mJstar;
    }

    @NonNull
    static CamColor c(@ColorInt int i10) {
        return d(i10, ViewingConditions.DEFAULT);
    }

    @NonNull
    private static CamColor e(@FloatRange float f, @FloatRange float f6, @FloatRange float f7) {
        return f(f, f6, f7, ViewingConditions.DEFAULT);
    }

    static int m(@FloatRange float f, @FloatRange float f6, @FloatRange float f7) {
        return n(f, f6, f7, ViewingConditions.DEFAULT);
    }

    @ColorInt
    int p() {
        return o(ViewingConditions.DEFAULT);
    }

    CamColor(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15) {
        this.mHue = f;
        this.mChroma = f6;
        this.mJ = f7;
        this.mQ = f10;
        this.mM = f11;
        this.mS = f12;
        this.mJstar = f13;
        this.mAstar = f14;
        this.mBstar = f15;
    }

    @NonNull
    static CamColor d(@ColorInt int i10, @NonNull ViewingConditions viewingConditions) {
        float f;
        float[] fArrF = CamUtils.f(i10);
        float[][] fArr = CamUtils.XYZ_TO_CAM16RGB;
        float f6 = fArrF[0];
        float[] fArr2 = fArr[0];
        float f7 = fArr2[0] * f6;
        float f10 = fArrF[1];
        float f11 = f7 + (fArr2[1] * f10);
        float f12 = fArrF[2];
        float f13 = f11 + (fArr2[2] * f12);
        float[] fArr3 = fArr[1];
        float f14 = (fArr3[0] * f6) + (fArr3[1] * f10) + (fArr3[2] * f12);
        float[] fArr4 = fArr[2];
        float f15 = (f6 * fArr4[0]) + (f10 * fArr4[1]) + (f12 * fArr4[2]);
        float f16 = viewingConditions.i()[0] * f13;
        float f17 = viewingConditions.i()[1] * f14;
        float f18 = viewingConditions.i()[2] * f15;
        float fPow = (float) Math.pow(((double) (viewingConditions.c() * Math.abs(f16))) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (viewingConditions.c() * Math.abs(f17))) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (viewingConditions.c() * Math.abs(f18))) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f16) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f17) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f18) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d = fSignum3;
        float f19 = ((float) (((((double) fSignum) * 11.0d) + (((double) fSignum2) * (-12.0d))) + d)) / 11.0f;
        float f20 = ((float) (((double) (fSignum + fSignum2)) - (d * 2.0d))) / 9.0f;
        float f21 = fSignum2 * 20.0f;
        float f22 = (((fSignum * 20.0f) + f21) + (21.0f * fSignum3)) / 20.0f;
        float f23 = (((fSignum * 40.0f) + f21) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f20, f19)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f24 = fAtan2;
        float f25 = (3.1415927f * f24) / 180.0f;
        float fPow4 = ((float) Math.pow((f23 * viewingConditions.f()) / viewingConditions.a(), viewingConditions.b() * viewingConditions.j())) * 100.0f;
        float fD = viewingConditions.d() * (4.0f / viewingConditions.b()) * ((float) Math.sqrt(fPow4 / 100.0f)) * (viewingConditions.a() + 4.0f);
        if (f24 < 20.14d) {
            f = 360.0f + f24;
        } else {
            f = f24;
        }
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) f) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.g()) * viewingConditions.h()) * ((float) Math.sqrt((f19 * f19) + (f20 * f20)))) / (f22 + 0.305f), 0.9d));
        float fSqrt = fPow5 * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        float fD2 = fSqrt * viewingConditions.d();
        float fSqrt2 = ((float) Math.sqrt((fPow5 * viewingConditions.b()) / (viewingConditions.a() + 4.0f))) * 50.0f;
        float f26 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((0.0228f * fD2) + 1.0f)) * 43.85965f;
        double d2 = f25;
        return new CamColor(f24, fSqrt, fPow4, fD, fD2, fSqrt2, f26, fLog * ((float) Math.cos(d2)), fLog * ((float) Math.sin(d2)));
    }

    float a(@NonNull CamColor camColor) {
        float fL = l() - camColor.l();
        float fG = g() - camColor.g();
        float fH = h() - camColor.h();
        return (float) (Math.pow(Math.sqrt((fL * fL) + (fG * fG) + (fH * fH)), 0.63d) * 1.41d);
    }

    @ColorInt
    int o(@NonNull ViewingConditions viewingConditions) {
        float fI;
        if (i() != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && k() != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            fI = i() / ((float) Math.sqrt(((double) k()) / 100.0d));
        } else {
            fI = 0.0f;
        }
        float fPow = (float) Math.pow(((double) fI) / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.e()), 0.73d), 1.1111111111111112d);
        double dJ = (j() * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + dJ) + 3.8d)) * 0.25f;
        float fA = viewingConditions.a() * ((float) Math.pow(((double) k()) / 100.0d, (1.0d / ((double) viewingConditions.b())) / ((double) viewingConditions.j())));
        float fG = fCos * 3846.1538f * viewingConditions.g() * viewingConditions.h();
        float f = fA / viewingConditions.f();
        float fSin = (float) Math.sin(dJ);
        float fCos2 = (float) Math.cos(dJ);
        float f6 = (((0.305f + f) * 23.0f) * fPow) / (((fG * 23.0f) + ((11.0f * fPow) * fCos2)) + ((fPow * 108.0f) * fSin));
        float f7 = fCos2 * f6;
        float f10 = f6 * fSin;
        float f11 = f * 460.0f;
        float f12 = (((451.0f * f7) + f11) + (288.0f * f10)) / 1403.0f;
        float f13 = ((f11 - (891.0f * f7)) - (261.0f * f10)) / 1403.0f;
        float f14 = ((f11 - (f7 * 220.0f)) - (f10 * 6300.0f)) / 1403.0f;
        float fSignum = Math.signum(f12) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, (((double) Math.abs(f12)) * 27.13d) / (400.0d - ((double) Math.abs(f12)))), 2.380952380952381d));
        float fSignum2 = Math.signum(f13) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, (((double) Math.abs(f13)) * 27.13d) / (400.0d - ((double) Math.abs(f13)))), 2.380952380952381d));
        float fSignum3 = Math.signum(f14) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, (((double) Math.abs(f14)) * 27.13d) / (400.0d - ((double) Math.abs(f14)))), 2.380952380952381d));
        float f15 = fSignum / viewingConditions.i()[0];
        float f16 = fSignum2 / viewingConditions.i()[1];
        float f17 = fSignum3 / viewingConditions.i()[2];
        float[][] fArr = CamUtils.CAM16RGB_TO_XYZ;
        float[] fArr2 = fArr[0];
        float f18 = (fArr2[0] * f15) + (fArr2[1] * f16) + (fArr2[2] * f17);
        float[] fArr3 = fArr[1];
        float f19 = (fArr3[0] * f15) + (fArr3[1] * f16) + (fArr3[2] * f17);
        float[] fArr4 = fArr[2];
        return ColorUtils.c(f18, f19, (f15 * fArr4[0]) + (f16 * fArr4[1]) + (f17 * fArr4[2]));
    }
}
