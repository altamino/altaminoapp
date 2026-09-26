package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class OffsetKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull e8.l<? super Density, IntOffset> offset) {
        t.j(modifier, "<this>");
        t.j(offset, "offset");
        return modifier.B(new OffsetPxModifier(offset, true, InspectableValueKt.c() ? new OffsetKt$offset$$inlined$debugInspectorInfo$1(offset) : InspectableValueKt.a()));
    }

    @Stable
    @NotNull
    public static final Modifier b(@NotNull Modifier offset, float f, float f6) {
        t.j(offset, "$this$offset");
        return offset.B(new OffsetModifier(f, f6, true, InspectableValueKt.c() ? new OffsetKt$offsetVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier c(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.f(0);
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.f(0);
        }
        return b(modifier, f, f6);
    }
}
