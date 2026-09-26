package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class DensityKt {
    @Stable
    @NotNull
    public static final Density a(float f, float f6) {
        return new DensityImpl(f, f6);
    }

    public static /* synthetic */ Density b(float f, float f6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f6 = 1.0f;
        }
        return a(f, f6);
    }
}
