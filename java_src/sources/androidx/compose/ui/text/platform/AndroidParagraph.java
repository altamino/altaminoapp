package androidx.compose.ui.text.platform;

import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.selection.WordBoundary;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;
import w7.s;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidParagraph implements Paragraph {
    private final long constraints;
    private final boolean ellipsis;

    @NotNull
    private final TextLayout layout;
    private final int maxLines;

    @NotNull
    private final AndroidParagraphIntrinsics paragraphIntrinsics;

    @NotNull
    private final List<Rect> placeholderRects;

    @NotNull
    private final m wordBoundary$delegate;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ResolvedTextDirection.values().length];
            iArr[ResolvedTextDirection.Ltr.ordinal()] = 1;
            iArr[ResolvedTextDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i10, boolean z6, long j6, k kVar) {
        this(androidParagraphIntrinsics, i10, z6, j6);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float g() {
        return B(0);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float s(int i10, boolean z6) {
        return z6 ? TextLayout.v(this.layout, i10, false, 2, null) : TextLayout.x(this.layout, i10, false, 2, null);
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public List<Rect> w() {
        return this.placeholderRects;
    }

    public /* synthetic */ AndroidParagraph(String str, TextStyle textStyle, List list, List list2, int i10, boolean z6, long j6, FontFamily.Resolver resolver, Density density, k kVar) {
        this(str, textStyle, list, list2, i10, z6, j6, resolver, density);
    }

    private final WordBoundary F() {
        return (WordBoundary) this.wordBoundary$delegate.getValue();
    }

    private final TextLayout z(int i10, int i11, TextUtils.TruncateAt truncateAt, int i12) {
        return new TextLayout(this.paragraphIntrinsics.e(), getWidth(), E(), i10, truncateAt, this.paragraphIntrinsics.i(), 1.0f, 0.0f, AndroidParagraphHelper_androidKt.b(this.paragraphIntrinsics.h()), true, i12, 0, 0, i11, null, null, this.paragraphIntrinsics.g(), 55424, null);
    }

    @NotNull
    public final CharSequence A() {
        return this.paragraphIntrinsics.e();
    }

    public final float B(int i10) {
        return this.layout.f(i10);
    }

    @NotNull
    public final Locale D() {
        Locale textLocale = this.paragraphIntrinsics.j().getTextLocale();
        t.i(textLocale, "paragraphIntrinsics.textPaint.textLocale");
        return textLocale;
    }

    @NotNull
    public final AndroidTextPaint E() {
        return this.paragraphIntrinsics.j();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float a() {
        return this.paragraphIntrinsics.a();
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public Rect b(int i10) {
        float fV = TextLayout.v(this.layout, i10, false, 2, null);
        float fV2 = TextLayout.v(this.layout, i10 + 1, false, 2, null);
        int iL = this.layout.l(i10);
        return new Rect(fV, this.layout.q(iL), fV2, this.layout.g(iL));
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public ResolvedTextDirection c(int i10) {
        return this.layout.t(this.layout.l(i10)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public void d(@NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        t.j(canvas, "canvas");
        t.j(brush, "brush");
        AndroidTextPaint androidTextPaintE = E();
        androidTextPaintE.a(brush, SizeKt.a(getWidth(), getHeight()));
        androidTextPaintE.c(shadow);
        androidTextPaintE.d(textDecoration);
        android.graphics.Canvas canvasC = AndroidCanvas_androidKt.c(canvas);
        if (q()) {
            canvasC.save();
            canvasC.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.layout.C(canvasC);
        if (q()) {
            canvasC.restore();
        }
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float e(int i10) {
        return this.layout.q(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getHeight() {
        return this.layout.b();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getWidth() {
        return Constraints.n(this.constraints);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int h(long j6) {
        return this.layout.s(this.layout.m((int) Offset.n(j6)), Offset.m(j6));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int i(int i10) {
        return this.layout.p(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int j(int i10, boolean z6) {
        return z6 ? this.layout.r(i10) : this.layout.k(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int k(float f) {
        return this.layout.m((int) f);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float l(int i10) {
        return this.layout.n(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float m(int i10) {
        return this.layout.g(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public Rect n(int i10) {
        if (i10 >= 0 && i10 <= A().length()) {
            float fV = TextLayout.v(this.layout, i10, false, 2, null);
            int iL = this.layout.l(i10);
            return new Rect(fV, this.layout.q(iL), fV, this.layout.g(iL));
        }
        throw new AssertionError("offset(" + i10 + ") is out of bounds (0," + A().length());
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int o() {
        return this.layout.h();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float p(int i10) {
        return this.layout.o(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public boolean q() {
        return this.layout.a();
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public Path r(int i10, int i11) {
        if (i10 >= 0 && i10 <= i11 && i11 <= A().length()) {
            android.graphics.Path path = new android.graphics.Path();
            this.layout.y(i10, i11, path);
            return AndroidPath_androidKt.b(path);
        }
        throw new AssertionError("Start(" + i10 + ") or End(" + i11 + ") is out of Range(0.." + A().length() + "), or start > end!");
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float t() {
        return this.maxLines < o() ? B(this.maxLines - 1) : B(o() - 1);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int u(int i10) {
        return this.layout.l(i10);
    }

    @Override // androidx.compose.ui.text.Paragraph
    @NotNull
    public ResolvedTextDirection v(int i10) {
        return this.layout.B(i10) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public void x(@NotNull Canvas canvas, long j6, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        t.j(canvas, "canvas");
        AndroidTextPaint androidTextPaintE = E();
        androidTextPaintE.b(j6);
        androidTextPaintE.c(shadow);
        androidTextPaintE.d(textDecoration);
        android.graphics.Canvas canvasC = AndroidCanvas_androidKt.c(canvas);
        if (q()) {
            canvasC.save();
            canvasC.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.layout.C(canvasC);
        if (q()) {
            canvasC.restore();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.compose.ui.text.platform.AndroidParagraph] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    private AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i10, boolean z6, long j6) {
        List<Rect> listM;
        Rect rect;
        float fS;
        float f;
        int iB;
        float fQ;
        float fB;
        float f6;
        this.paragraphIntrinsics = androidParagraphIntrinsics;
        this.maxLines = i10;
        this.ellipsis = z6;
        this.constraints = j6;
        if (Constraints.o(j6) != 0 || Constraints.p(j6) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.".toString());
        }
        boolean z10 = true;
        if (i10 >= 1) {
            TextStyle textStyleH = androidParagraphIntrinsics.h();
            int iF = AndroidParagraph_androidKt.f(textStyleH.v());
            TextAlign textAlignV = textStyleH.v();
            ?? J = textAlignV == null ? 0 : TextAlign.j(textAlignV.m(), TextAlign.Companion.c());
            TextUtils.TruncateAt truncateAt = z6 ? TextUtils.TruncateAt.END : null;
            TextLayout textLayoutZ = z(iF, J, truncateAt, i10);
            if (!z6 || textLayoutZ.b() <= Constraints.m(j6) || i10 <= 1) {
                this.layout = textLayoutZ;
            } else {
                int iE = AndroidParagraph_androidKt.e(textLayoutZ, Constraints.m(j6));
                if (iE > 0 && iE != i10) {
                    textLayoutZ = z(iF, J, truncateAt, iE);
                }
                this.layout = textLayoutZ;
            }
            E().a(textStyleH.f(), SizeKt.a(getWidth(), getHeight()));
            for (ShaderBrushSpan shaderBrushSpan : C(this.layout)) {
                shaderBrushSpan.a(Size.c(SizeKt.a(getWidth(), getHeight())));
            }
            CharSequence charSequenceE = this.paragraphIntrinsics.e();
            if (!(charSequenceE instanceof Spanned)) {
                listM = v.m();
            } else {
                Object[] spans = ((Spanned) charSequenceE).getSpans(0, charSequenceE.length(), PlaceholderSpan.class);
                t.i(spans, "getSpans(0, length, PlaceholderSpan::class.java)");
                ArrayList arrayList = new ArrayList(spans.length);
                int length = spans.length;
                int i11 = 0;
                while (i11 < length) {
                    PlaceholderSpan placeholderSpan = (PlaceholderSpan) spans[i11];
                    Spanned spanned = (Spanned) charSequenceE;
                    int spanStart = spanned.getSpanStart(placeholderSpan);
                    int spanEnd = spanned.getSpanEnd(placeholderSpan);
                    int iL = this.layout.l(spanStart);
                    boolean z11 = (this.layout.i(iL) <= 0 || spanEnd <= this.layout.j(iL)) ? false : z10;
                    boolean z12 = spanEnd > this.layout.k(iL) ? z10 : false;
                    if (z11 || z12) {
                        rect = null;
                    } else {
                        int i12 = WhenMappings.$EnumSwitchMapping$0[v(spanStart).ordinal()];
                        if (i12 != z10) {
                            if (i12 != 2) {
                                throw new s();
                            }
                            fS = s(spanStart, z10) - placeholderSpan.d();
                        } else {
                            fS = s(spanStart, z10);
                        }
                        float fD = placeholderSpan.d() + fS;
                        TextLayout textLayout = this.layout;
                        switch (placeholderSpan.c()) {
                            case 0:
                                f = textLayout.f(iL);
                                iB = placeholderSpan.b();
                                fQ = f - iB;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 1:
                                fQ = textLayout.q(iL);
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 2:
                                f = textLayout.g(iL);
                                iB = placeholderSpan.b();
                                fQ = f - iB;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 3:
                                fQ = ((textLayout.q(iL) + textLayout.g(iL)) - placeholderSpan.b()) / 2;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 4:
                                fB = placeholderSpan.a().ascent;
                                f6 = textLayout.f(iL);
                                fQ = fB + f6;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 5:
                                f = placeholderSpan.a().descent + textLayout.f(iL);
                                iB = placeholderSpan.b();
                                fQ = f - iB;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            case 6:
                                Paint.FontMetricsInt fontMetricsIntA = placeholderSpan.a();
                                fB = ((fontMetricsIntA.ascent + fontMetricsIntA.descent) - placeholderSpan.b()) / 2;
                                f6 = textLayout.f(iL);
                                fQ = fB + f6;
                                rect = new Rect(fS, fQ, fD, placeholderSpan.b() + fQ);
                                break;
                            default:
                                throw new IllegalStateException("unexpected verticalAlignment");
                        }
                    }
                    arrayList.add(rect);
                    i11++;
                    z10 = true;
                }
                listM = arrayList;
            }
            this.placeholderRects = listM;
            this.wordBoundary$delegate = o.b(q.NONE, new AndroidParagraph$wordBoundary$2(this));
            return;
        }
        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
    }

    private final ShaderBrushSpan[] C(TextLayout textLayout) {
        if (!(textLayout.z() instanceof Spanned)) {
            return new ShaderBrushSpan[0];
        }
        ShaderBrushSpan[] brushSpans = (ShaderBrushSpan[]) ((Spanned) textLayout.z()).getSpans(0, textLayout.z().length(), ShaderBrushSpan.class);
        t.i(brushSpans, "brushSpans");
        if (brushSpans.length == 0) {
            return new ShaderBrushSpan[0];
        }
        return brushSpans;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public long f(int i10) {
        return TextRangeKt.b(F().b(i10), F().a(i10));
    }

    private AndroidParagraph(String str, TextStyle textStyle, List<AnnotatedString.Range<SpanStyle>> list, List<AnnotatedString.Range<Placeholder>> list2, int i10, boolean z6, long j6, FontFamily.Resolver resolver, Density density) {
        this(new AndroidParagraphIntrinsics(str, textStyle, list, list2, resolver, density), i10, z6, j6, null);
    }
}
