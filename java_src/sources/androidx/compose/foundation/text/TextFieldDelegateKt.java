package androidx.compose.foundation.text;

import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import g8.c;
import kotlin.collections.v;
import kotlin.text.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class TextFieldDelegateKt {
    public static final int DefaultWidthCharCount = 10;

    @NotNull
    private static final String EmptyTextReplacement = t.C("H", 10);

    @NotNull
    public static final String c() {
        return EmptyTextReplacement;
    }

    private static final int d(float f) {
        return c.c((float) Math.ceil(f));
    }

    public static final long a(@NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull String text, int i10) {
        kotlin.jvm.internal.t.j(style, "style");
        kotlin.jvm.internal.t.j(density, "density");
        kotlin.jvm.internal.t.j(fontFamilyResolver, "fontFamilyResolver");
        kotlin.jvm.internal.t.j(text, "text");
        Paragraph paragraphA = ParagraphKt.a(text, style, ConstraintsKt.b(0, 0, 0, 0, 15, null), density, fontFamilyResolver, (64 & 32) != 0 ? v.m() : v.m(), (64 & 64) != 0 ? v.m() : null, (64 & 128) != 0 ? Integer.MAX_VALUE : i10, (64 & 256) != 0 ? false : false);
        return IntSizeKt.a(d(paragraphA.a()), d(paragraphA.getHeight()));
    }

    public static /* synthetic */ long b(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str = EmptyTextReplacement;
        }
        if ((i11 & 16) != 0) {
            i10 = 1;
        }
        return a(textStyle, density, resolver, str, i10);
    }
}
