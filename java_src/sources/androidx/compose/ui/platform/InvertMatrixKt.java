package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class InvertMatrixKt {
    public static final boolean a(@NotNull float[] invertTo, @NotNull float[] other) {
        kotlin.jvm.internal.t.j(invertTo, "$this$invertTo");
        kotlin.jvm.internal.t.j(other, "other");
        float f = invertTo[0];
        float f6 = invertTo[1];
        float f7 = invertTo[2];
        float f10 = invertTo[3];
        float f11 = invertTo[4];
        float f12 = invertTo[5];
        float f13 = invertTo[6];
        float f14 = invertTo[7];
        float f15 = invertTo[8];
        float f16 = invertTo[9];
        float f17 = invertTo[10];
        float f18 = invertTo[11];
        float f19 = invertTo[12];
        float f20 = invertTo[13];
        float f21 = invertTo[14];
        float f22 = invertTo[15];
        float f23 = (f * f12) - (f6 * f11);
        float f24 = (f * f13) - (f7 * f11);
        float f25 = (f * f14) - (f10 * f11);
        float f26 = (f6 * f13) - (f7 * f12);
        float f27 = (f6 * f14) - (f10 * f12);
        float f28 = (f7 * f14) - (f10 * f13);
        float f29 = (f15 * f20) - (f16 * f19);
        float f30 = (f15 * f21) - (f17 * f19);
        float f31 = (f15 * f22) - (f18 * f19);
        float f32 = (f16 * f21) - (f17 * f20);
        float f33 = (f16 * f22) - (f18 * f20);
        float f34 = (f17 * f22) - (f18 * f21);
        float f35 = (((((f23 * f34) - (f24 * f33)) + (f25 * f32)) + (f26 * f31)) - (f27 * f30)) + (f28 * f29);
        if (f35 == 0.0f) {
            return false;
        }
        float f36 = 1.0f / f35;
        other[0] = (((f12 * f34) - (f13 * f33)) + (f14 * f32)) * f36;
        other[1] = ((((-f6) * f34) + (f7 * f33)) - (f10 * f32)) * f36;
        other[2] = (((f20 * f28) - (f21 * f27)) + (f22 * f26)) * f36;
        other[3] = ((((-f16) * f28) + (f17 * f27)) - (f18 * f26)) * f36;
        float f37 = -f11;
        other[4] = (((f37 * f34) + (f13 * f31)) - (f14 * f30)) * f36;
        other[5] = (((f34 * f) - (f7 * f31)) + (f10 * f30)) * f36;
        float f38 = -f19;
        other[6] = (((f38 * f28) + (f21 * f25)) - (f22 * f24)) * f36;
        other[7] = (((f28 * f15) - (f17 * f25)) + (f18 * f24)) * f36;
        other[8] = (((f11 * f33) - (f12 * f31)) + (f14 * f29)) * f36;
        other[9] = ((((-f) * f33) + (f31 * f6)) - (f10 * f29)) * f36;
        other[10] = (((f19 * f27) - (f20 * f25)) + (f22 * f23)) * f36;
        other[11] = ((((-f15) * f27) + (f25 * f16)) - (f18 * f23)) * f36;
        other[12] = (((f37 * f32) + (f12 * f30)) - (f13 * f29)) * f36;
        other[13] = (((f * f32) - (f6 * f30)) + (f7 * f29)) * f36;
        other[14] = (((f38 * f26) + (f20 * f24)) - (f21 * f23)) * f36;
        other[15] = (((f15 * f26) - (f16 * f24)) + (f17 * f23)) * f36;
        return true;
    }
}
