package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import androidx.core.text.TextUtilsCompat;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidParagraphIntrinsics_androidKt {
    @NotNull
    public static final ParagraphIntrinsics a(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        t.j(text, "text");
        t.j(style, "style");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        return new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, fontFamilyResolver, density);
    }

    public static final int b(@Nullable TextDirection textDirection, @Nullable LocaleList localeList) {
        Locale localeB;
        int iL = textDirection != null ? textDirection.l() : TextDirection.Companion.a();
        TextDirection.Companion companion = TextDirection.Companion;
        if (TextDirection.i(iL, companion.b())) {
            return 2;
        }
        if (!TextDirection.i(iL, companion.c())) {
            if (TextDirection.i(iL, companion.d())) {
                return 0;
            }
            if (TextDirection.i(iL, companion.e())) {
                return 1;
            }
            if (!TextDirection.i(iL, companion.a())) {
                throw new IllegalStateException("Invalid TextDirection.".toString());
            }
            if (localeList == null || (localeB = ((AndroidLocale) localeList.c(0).a()).b()) == null) {
                localeB = Locale.getDefault();
            }
            int iA = TextUtilsCompat.a(localeB);
            if (iA == 0 || iA != 1) {
                return 2;
            }
        }
        return 3;
    }
}
