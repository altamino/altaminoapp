package androidx.compose.foundation.text;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import j8.o;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Stable
@InternalFoundationTextApi
public final class TextDelegate {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Density density;

    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;

    @Nullable
    private LayoutDirection intrinsicsLayoutDirection;
    private final int maxLines;
    private final int overflow;

    @Nullable
    private MultiParagraphIntrinsics paragraphIntrinsics;

    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final boolean softWrap;

    @NotNull
    private final TextStyle style;

    @NotNull
    private final AnnotatedString text;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final void a(@NotNull Canvas canvas, @NotNull TextLayoutResult textLayoutResult) {
            t.j(canvas, "canvas");
            t.j(textLayoutResult, "textLayoutResult");
            TextPainter.INSTANCE.a(canvas, textLayoutResult);
        }
    }

    public /* synthetic */ TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i10, boolean z6, int i11, Density density, FontFamily.Resolver resolver, List list, k kVar) {
        this(annotatedString, textStyle, i10, z6, i11, density, resolver, list);
    }

    private final MultiParagraph o(long j6, LayoutDirection layoutDirection) {
        n(layoutDirection);
        int iP = Constraints.p(j6);
        int iN = ((this.softWrap || TextOverflow.e(this.overflow, TextOverflow.Companion.b())) && Constraints.j(j6)) ? Constraints.n(j6) : Integer.MAX_VALUE;
        int i10 = (this.softWrap || !TextOverflow.e(this.overflow, TextOverflow.Companion.b())) ? this.maxLines : 1;
        if (iP != iN) {
            iN = o.n(c(), iP, iN);
        }
        return new MultiParagraph(f(), ConstraintsKt.b(0, iN, 0, Constraints.m(j6), 5, null), i10, TextOverflow.e(this.overflow, TextOverflow.Companion.b()), null);
    }

    @NotNull
    public final Density a() {
        return this.density;
    }

    @NotNull
    public final FontFamily.Resolver b() {
        return this.fontFamilyResolver;
    }

    public final int d() {
        return this.maxLines;
    }

    public final int g() {
        return this.overflow;
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> h() {
        return this.placeholders;
    }

    public final boolean i() {
        return this.softWrap;
    }

    @NotNull
    public final TextStyle j() {
        return this.style;
    }

    @NotNull
    public final AnnotatedString k() {
        return this.text;
    }

    private TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i10, boolean z6, int i11, Density density, FontFamily.Resolver resolver, List<AnnotatedString.Range<Placeholder>> list) {
        this.text = annotatedString;
        this.style = textStyle;
        this.maxLines = i10;
        this.softWrap = z6;
        this.overflow = i11;
        this.density = density;
        this.fontFamilyResolver = resolver;
        this.placeholders = list;
        if (i10 <= 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    private final MultiParagraphIntrinsics f() {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.paragraphIntrinsics;
        if (multiParagraphIntrinsics != null) {
            return multiParagraphIntrinsics;
        }
        throw new IllegalStateException("layoutIntrinsics must be called first");
    }

    public static /* synthetic */ TextLayoutResult m(TextDelegate textDelegate, long j6, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            textLayoutResult = null;
        }
        return textDelegate.l(j6, layoutDirection, textLayoutResult);
    }

    @NotNull
    public final TextLayoutResult l(long j6, @NotNull LayoutDirection layoutDirection, @Nullable TextLayoutResult textLayoutResult) {
        t.j(layoutDirection, "layoutDirection");
        if (textLayoutResult != null && TextLayoutHelperKt.a(textLayoutResult, this.text, this.style, this.placeholders, this.maxLines, this.softWrap, this.overflow, this.density, layoutDirection, this.fontFamilyResolver, j6)) {
            return textLayoutResult.a(new TextLayoutInput(textLayoutResult.k().j(), this.style, textLayoutResult.k().g(), textLayoutResult.k().e(), textLayoutResult.k().h(), textLayoutResult.k().f(), textLayoutResult.k().b(), textLayoutResult.k().d(), textLayoutResult.k().c(), j6, (k) null), ConstraintsKt.d(j6, IntSizeKt.a((int) Math.ceil(textLayoutResult.v().y()), (int) Math.ceil(textLayoutResult.v().g()))));
        }
        MultiParagraph multiParagraphO = o(j6, layoutDirection);
        return new TextLayoutResult(new TextLayoutInput(this.text, this.style, this.placeholders, this.maxLines, this.softWrap, this.overflow, this.density, layoutDirection, this.fontFamilyResolver, j6, (k) null), multiParagraphO, ConstraintsKt.d(j6, IntSizeKt.a((int) Math.ceil(multiParagraphO.y()), (int) Math.ceil(multiParagraphO.g()))), null);
    }

    public final void n(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.paragraphIntrinsics;
        if (multiParagraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || multiParagraphIntrinsics.b()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(this.text, TextStyleKt.d(this.style, layoutDirection), this.placeholders, this.density, this.fontFamilyResolver);
        }
        this.paragraphIntrinsics = multiParagraphIntrinsics;
    }

    public final int c() {
        return (int) Math.ceil(f().c());
    }

    public final int e() {
        return (int) Math.ceil(f().a());
    }

    public /* synthetic */ TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i10, boolean z6, int i11, Density density, FontFamily.Resolver resolver, List list, int i12, k kVar) {
        this(annotatedString, textStyle, (i12 & 4) != 0 ? Integer.MAX_VALUE : i10, (i12 & 8) != 0 ? true : z6, (i12 & 16) != 0 ? TextOverflow.Companion.a() : i11, density, resolver, (i12 & 128) != 0 ? v.m() : list, null);
    }
}
