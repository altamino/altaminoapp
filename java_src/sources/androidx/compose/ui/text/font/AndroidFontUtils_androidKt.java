package androidx.compose.ui.text.font;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidFontUtils_androidKt {
    public static final int b(boolean z6, boolean z10) {
        if (z10 && z6) {
            return 3;
        }
        if (z6) {
            return 1;
        }
        return z10 ? 2 : 0;
    }

    @NotNull
    public static final FontWeight a(@NotNull FontWeight.Companion companion) {
        t.j(companion, "<this>");
        return companion.g();
    }

    public static final int c(@NotNull FontWeight fontWeight, int i10) {
        t.j(fontWeight, "fontWeight");
        return b(fontWeight.compareTo(a(FontWeight.Companion)) >= 0, FontStyle.f(i10, FontStyle.Companion.a()));
    }
}
