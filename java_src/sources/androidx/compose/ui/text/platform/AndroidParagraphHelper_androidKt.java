package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.text.SpannableString;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.platform.extensions.PlaceholderExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnitKt;
import e8.r;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidParagraphHelper_androidKt {
    @NotNull
    public static final CharSequence a(@NotNull String text, float f, @NotNull TextStyle contextTextStyle, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull r<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface) {
        t.j(text, "text");
        t.j(contextTextStyle, "contextTextStyle");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(resolveTypeface, "resolveTypeface");
        if (spanStyles.isEmpty() && placeholders.isEmpty() && t.e(contextTextStyle.z(), TextIndent.Companion.a()) && TextUnitKt.f(contextTextStyle.o())) {
            return text;
        }
        SpannableString spannableString = new SpannableString(text);
        if (b(contextTextStyle) && contextTextStyle.p() == null) {
            SpannableExtensions_androidKt.o(spannableString, contextTextStyle.o(), f, density);
        } else {
            LineHeightStyle lineHeightStyleP = contextTextStyle.p();
            if (lineHeightStyleP == null) {
                lineHeightStyleP = LineHeightStyle.Companion.a();
            }
            SpannableExtensions_androidKt.n(spannableString, contextTextStyle.o(), f, density, lineHeightStyleP);
        }
        SpannableExtensions_androidKt.v(spannableString, contextTextStyle.z(), f, density);
        SpannableExtensions_androidKt.t(spannableString, contextTextStyle, spanStyles, density, resolveTypeface);
        PlaceholderExtensions_androidKt.d(spannableString, placeholders, density);
        return spannableString;
    }

    public static final boolean b(@NotNull TextStyle textStyle) {
        PlatformParagraphStyle platformParagraphStyleA;
        t.j(textStyle, "<this>");
        PlatformTextStyle platformTextStyleS = textStyle.s();
        if (platformTextStyleS == null || (platformParagraphStyleA = platformTextStyleS.a()) == null) {
            return true;
        }
        return platformParagraphStyleA.b();
    }
}
