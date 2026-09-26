package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidParagraph_androidKt {
    @NotNull
    public static final Paragraph a(@NotNull ParagraphIntrinsics paragraphIntrinsics, int i10, boolean z6, long j6) {
        t.j(paragraphIntrinsics, "paragraphIntrinsics");
        return new AndroidParagraph((AndroidParagraphIntrinsics) paragraphIntrinsics, i10, z6, j6, null);
    }

    @NotNull
    public static final Paragraph b(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z6, long j6, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        t.j(text, "text");
        t.j(style, "style");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        return new AndroidParagraph(new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, fontFamilyResolver, density), i10, z6, j6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int f(TextAlign textAlign) {
        TextAlign.Companion companion = TextAlign.Companion;
        int iD = companion.d();
        if (textAlign != null && TextAlign.j(textAlign.m(), iD)) {
            return 3;
        }
        int iE = companion.e();
        if (textAlign != null && TextAlign.j(textAlign.m(), iE)) {
            return 4;
        }
        int iA = companion.a();
        if (textAlign != null && TextAlign.j(textAlign.m(), iA)) {
            return 2;
        }
        int iF = companion.f();
        if (textAlign == null || !TextAlign.j(textAlign.m(), iF)) {
            int iB = companion.b();
            if (textAlign != null && TextAlign.j(textAlign.m(), iB)) {
                return 1;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(TextLayout textLayout, int i10) {
        int iH = textLayout.h();
        for (int i11 = 0; i11 < iH; i11++) {
            if (textLayout.g(i11) > i10) {
                return i11;
            }
        }
        return textLayout.h();
    }
}
