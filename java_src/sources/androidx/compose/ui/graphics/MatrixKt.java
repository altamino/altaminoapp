package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class MatrixKt {
    public static final boolean a(@NotNull float[] isIdentity) {
        kotlin.jvm.internal.t.j(isIdentity, "$this$isIdentity");
        int i10 = 0;
        while (i10 < 4) {
            int i11 = 0;
            while (i11 < 4) {
                if (isIdentity[(i10 * 4) + i11] != (i10 == i11 ? 1.0f : 0.0f)) {
                    return false;
                }
                i11++;
            }
            i10++;
        }
        return true;
    }
}
