package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {

    @NotNull
    private final CharSequence charSequence;

    @NotNull
    private final Density density;

    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;

    @NotNull
    private final LayoutIntrinsics layoutIntrinsics;

    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;

    @NotNull
    private final List<TypefaceDirtyTracker> resolvedTypefaces;

    @NotNull
    private final List<AnnotatedString.Range<SpanStyle>> spanStyles;

    @NotNull
    private final TextStyle style;

    @NotNull
    private final String text;
    private final int textDirectionHeuristic;

    @NotNull
    private final AndroidTextPaint textPaint;

    @NotNull
    public final CharSequence e() {
        return this.charSequence;
    }

    @NotNull
    public final FontFamily.Resolver f() {
        return this.fontFamilyResolver;
    }

    @NotNull
    public final LayoutIntrinsics g() {
        return this.layoutIntrinsics;
    }

    @NotNull
    public final TextStyle h() {
        return this.style;
    }

    public final int i() {
        return this.textDirectionHeuristic;
    }

    @NotNull
    public final AndroidTextPaint j() {
        return this.textPaint;
    }

    public AndroidParagraphIntrinsics(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull Density density) {
        t.j(text, "text");
        t.j(style, "style");
        t.j(spanStyles, "spanStyles");
        t.j(placeholders, "placeholders");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(density, "density");
        this.text = text;
        this.style = style;
        this.spanStyles = spanStyles;
        this.placeholders = placeholders;
        this.fontFamilyResolver = fontFamilyResolver;
        this.density = density;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, density.getDensity());
        this.textPaint = androidTextPaint;
        this.resolvedTypefaces = new ArrayList();
        int iB = AndroidParagraphIntrinsics_androidKt.b(style.x(), style.q());
        this.textDirectionHeuristic = iB;
        AndroidParagraphIntrinsics$resolveTypeface$1 androidParagraphIntrinsics$resolveTypeface$1 = new AndroidParagraphIntrinsics$resolveTypeface$1(this);
        CharSequence charSequenceA = AndroidParagraphHelper_androidKt.a(text, androidTextPaint.getTextSize(), style, d0.D0(u.e(new AnnotatedString.Range(TextPaintExtensions_androidKt.a(androidTextPaint, style.E(), androidParagraphIntrinsics$resolveTypeface$1, density), 0, text.length())), spanStyles), placeholders, density, androidParagraphIntrinsics$resolveTypeface$1);
        this.charSequence = charSequenceA;
        this.layoutIntrinsics = new LayoutIntrinsics(charSequenceA, androidTextPaint, iB);
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float a() {
        return this.layoutIntrinsics.c();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean b() {
        List<TypefaceDirtyTracker> list = this.resolvedTypefaces;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10).b()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float c() {
        return this.layoutIntrinsics.b();
    }
}
