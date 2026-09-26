package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
public final class ComplexDoubleKt {
    @NotNull
    public static final u<ComplexDouble, ComplexDouble> a(double d, double d2, double d6) {
        double d7 = -d2;
        double d10 = (d2 * d2) - ((4.0d * d) * d6);
        ComplexDouble complexDoubleB = b(d10);
        complexDoubleB._real += d7;
        double d11 = d * 2.0d;
        complexDoubleB._real /= d11;
        complexDoubleB._imaginary /= d11;
        ComplexDouble complexDoubleB2 = b(d10);
        double d12 = -1;
        complexDoubleB2._real *= d12;
        complexDoubleB2._imaginary *= d12;
        complexDoubleB2._real += d7;
        complexDoubleB2._real /= d11;
        complexDoubleB2._imaginary /= d11;
        return a0.a(complexDoubleB, complexDoubleB2);
    }

    @NotNull
    public static final ComplexDouble b(double d) {
        return d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? new ComplexDouble(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, Math.sqrt(Math.abs(d))) : new ComplexDouble(Math.sqrt(d), com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
    }
}
