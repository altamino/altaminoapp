package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class WindowInsetsSizeKt$windowInsetsTopHeight$2 extends v implements e8.p<WindowInsets, Density, Integer> {
    public static final WindowInsetsSizeKt$windowInsetsTopHeight$2 INSTANCE = new WindowInsetsSizeKt$windowInsetsTopHeight$2();

    WindowInsetsSizeKt$windowInsetsTopHeight$2() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull Density it) {
        t.j($receiver, "$this$$receiver");
        t.j(it, "it");
        return Integer.valueOf($receiver.a(it));
    }
}
