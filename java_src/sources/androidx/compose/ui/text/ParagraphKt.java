package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraph_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class ParagraphKt {
    public static final int DefaultMaxLines = Integer.MAX_VALUE;

    public static final int d(float f) {
        return (int) Math.ceil(f);
    }

    @NotNull
    public static final Paragraph a(@NotNull String text, @NotNull TextStyle style, long j6, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z6) {
        t.j(text, "text");
        t.j(style, "style");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        return AndroidParagraph_androidKt.b(text, style, spanStyles, placeholders, i10, z6, j6, density, fontFamilyResolver);
    }

    @NotNull
    public static final Paragraph c(@NotNull ParagraphIntrinsics paragraphIntrinsics, long j6, int i10, boolean z6) {
        t.j(paragraphIntrinsics, "paragraphIntrinsics");
        return AndroidParagraph_androidKt.a(paragraphIntrinsics, i10, z6, j6);
    }
}
