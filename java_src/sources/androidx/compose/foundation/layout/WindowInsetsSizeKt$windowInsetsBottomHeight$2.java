package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class WindowInsetsSizeKt$windowInsetsBottomHeight$2 extends v implements e8.p<WindowInsets, Density, Integer> {
    public static final WindowInsetsSizeKt$windowInsetsBottomHeight$2 INSTANCE = new WindowInsetsSizeKt$windowInsetsBottomHeight$2();

    WindowInsetsSizeKt$windowInsetsBottomHeight$2() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull Density it) {
        t.j($receiver, "$this$$receiver");
        t.j(it, "it");
        return Integer.valueOf($receiver.c(it));
    }
}
