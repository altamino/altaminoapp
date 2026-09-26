package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class WindowInsetsSizeKt$windowInsetsEndWidth$2 extends v implements q<WindowInsets, LayoutDirection, Density, Integer> {
    public static final WindowInsetsSizeKt$windowInsetsEndWidth$2 INSTANCE = new WindowInsetsSizeKt$windowInsetsEndWidth$2();

    WindowInsetsSizeKt$windowInsetsEndWidth$2() {
        super(3);
    }

    @Override // e8.q
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        t.j($receiver, "$this$$receiver");
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        return Integer.valueOf(layoutDirection == LayoutDirection.Rtl ? $receiver.d(density, layoutDirection) : $receiver.b(density, layoutDirection));
    }
}
