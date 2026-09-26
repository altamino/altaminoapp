package androidx.compose.ui.text.font;

import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class FontKt {
    @Stable
    @NotNull
    public static final Font a(int i10, @NotNull FontWeight weight, int i11, int i12) {
        t.j(weight, "weight");
        return new ResourceFont(i10, weight, i11, i12, null);
    }

    public static /* synthetic */ Font b(int i10, FontWeight fontWeight, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            fontWeight = FontWeight.Companion.d();
        }
        if ((i13 & 4) != 0) {
            i11 = FontStyle.Companion.b();
        }
        if ((i13 & 8) != 0) {
            i12 = FontLoadingStrategy.Companion.b();
        }
        return a(i10, fontWeight, i11, i12);
    }

    @Stable
    @NotNull
    public static final FontFamily c(@NotNull Font font) {
        t.j(font, "<this>");
        return FontFamilyKt.a(font);
    }
}
