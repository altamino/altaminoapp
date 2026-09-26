package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SelectionHandlesKt {
    private static final float HandleHeight;
    private static final float HandleWidth;

    @NotNull
    private static final SemanticsPropertyKey<SelectionHandleInfo> SelectionHandleInfoKey = new SemanticsPropertyKey<>("SelectionHandleInfo", null, 2, null);

    public static final float b() {
        return HandleHeight;
    }

    public static final float c() {
        return HandleWidth;
    }

    @NotNull
    public static final SemanticsPropertyKey<SelectionHandleInfo> d() {
        return SelectionHandleInfoKey;
    }

    static {
        float f = 25;
        HandleWidth = Dp.f(f);
        HandleHeight = Dp.f(f);
    }

    public static final long a(long j6) {
        return OffsetKt.a(Offset.m(j6), Offset.n(j6) - 1.0f);
    }
}
