package androidx.compose.ui.text.android;

import android.text.Spanned;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class SpannedExtensionsKt {
    public static final boolean a(@NotNull Spanned spanned, @NotNull Class<?> clazz) {
        t.j(spanned, "<this>");
        t.j(clazz, "clazz");
        return spanned.nextSpanTransition(-1, spanned.length(), clazz) != spanned.length();
    }

    public static final boolean b(@NotNull Spanned spanned, @NotNull Class<?> clazz, int i10, int i11) {
        t.j(spanned, "<this>");
        t.j(clazz, "clazz");
        return spanned.nextSpanTransition(i10 - 1, i11, clazz) != i11;
    }
}
