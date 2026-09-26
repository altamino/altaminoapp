package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ParagraphIntrinsicsKt {
    @NotNull
    public static final ParagraphIntrinsics a(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        t.j(text, "text");
        t.j(style, "style");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        return AndroidParagraphIntrinsics_androidKt.a(text, style, spanStyles, placeholders, density, fontFamilyResolver);
    }
}
