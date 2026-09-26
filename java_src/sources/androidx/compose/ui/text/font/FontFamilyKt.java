package androidx.compose.ui.text.font;

import androidx.compose.runtime.Stable;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class FontFamilyKt {
    @Stable
    @NotNull
    public static final FontFamily a(@NotNull Font... fonts) {
        t.j(fonts, "fonts");
        return new FontListFontFamily(o.c(fonts));
    }
}
