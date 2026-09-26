package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ShadowKt {
    @Stable
    @NotNull
    public static final Shadow a(@NotNull Shadow start, @NotNull Shadow stop, float f) {
        kotlin.jvm.internal.t.j(start, "start");
        kotlin.jvm.internal.t.j(stop, "stop");
        return new Shadow(ColorKt.i(start.c(), stop.c(), f), OffsetKt.e(start.d(), stop.d(), f), MathHelpersKt.a(start.b(), stop.b(), f), null);
    }
}
