package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.e1;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidMultiParagraphDrawKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import j8.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MultiParagraph {
    private final boolean didExceedMaxLines;
    private final float height;

    @NotNull
    private final MultiParagraphIntrinsics intrinsics;
    private final int lineCount;
    private final int maxLines;

    @NotNull
    private final List<ParagraphInfo> paragraphInfoList;

    @NotNull
    private final List<Rect> placeholderRects;
    private final float width;

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j6, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z6, k kVar) {
        this(annotatedString, textStyle, j6, density, resolver, (List<AnnotatedString.Range<Placeholder>>) list, i10, z6);
    }

    public final boolean e() {
        return this.didExceedMaxLines;
    }

    public final float g() {
        return this.height;
    }

    @NotNull
    public final MultiParagraphIntrinsics i() {
        return this.intrinsics;
    }

    public final int l() {
        return this.lineCount;
    }

    public final int o(float f) {
        int iO;
        if (f <= 0.0f) {
            iO = 0;
        } else {
            iO = f >= this.height ? v.o(this.paragraphInfoList) : MultiParagraphKt.c(this.paragraphInfoList, f);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iO);
        return paragraphInfo.d() == 0 ? Math.max(0, paragraphInfo.f() - 1) : paragraphInfo.m(paragraphInfo.e().k(paragraphInfo.r(f)));
    }

    @NotNull
    public final List<ParagraphInfo> v() {
        return this.paragraphInfoList;
    }

    @NotNull
    public final List<Rect> x() {
        return this.placeholderRects;
    }

    public final float y() {
        return this.width;
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j6, int i10, boolean z6, k kVar) {
        this(multiParagraphIntrinsics, j6, i10, z6);
    }

    private final void C(int i10) {
        if (i10 < 0 || i10 >= a().g().length()) {
            throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + a().length() + ')').toString());
        }
    }

    private final void D(int i10) {
        if (i10 < 0 || i10 > a().g().length()) {
            throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + a().length() + b.END_LIST).toString());
        }
    }

    private final void E(int i10) {
        if (i10 < 0 || i10 >= this.lineCount) {
            throw new IllegalArgumentException(("lineIndex(" + i10 + ") is out of bounds [0, " + i10 + ')').toString());
        }
    }

    private final AnnotatedString a() {
        return this.intrinsics.e();
    }

    @ExperimentalTextApi
    public final void A(@NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        t.j(canvas, "canvas");
        t.j(brush, "brush");
        AndroidMultiParagraphDrawKt.a(this, canvas, brush, shadow, textDecoration);
    }

    public final void B(@NotNull Canvas canvas, long j6, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        t.j(canvas, "canvas");
        canvas.r();
        List<ParagraphInfo> list = this.paragraphInfoList;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ParagraphInfo paragraphInfo = list.get(i10);
            paragraphInfo.e().x(canvas, j6, shadow, textDecoration);
            canvas.b(0.0f, paragraphInfo.e().getHeight());
        }
        canvas.n();
    }

    public final float f() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        return this.paragraphInfoList.get(0).e().g();
    }

    public final float j() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) d0.v0(this.paragraphInfoList);
        return paragraphInfo.n(paragraphInfo.e().t());
    }

    @NotNull
    public final Path w(int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > a().g().length()) {
            throw new IllegalArgumentException(("Start(" + i10 + ") or End(" + i11 + ") is out of range [0.." + a().g().length() + "), or start > end!").toString());
        }
        if (i10 == i11) {
            return AndroidPath_androidKt.a();
        }
        Path pathA = AndroidPath_androidKt.a();
        int size = this.paragraphInfoList.size();
        for (int iA = MultiParagraphKt.a(this.paragraphInfoList, i10); iA < size; iA++) {
            ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
            if (paragraphInfo.f() >= i11) {
                break;
            }
            if (paragraphInfo.f() != paragraphInfo.b()) {
                e1.a(pathA, paragraphInfo.j(paragraphInfo.e().r(paragraphInfo.p(i10), paragraphInfo.p(i11))), 0L, 2, null);
            }
        }
        return pathA;
    }

    private MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j6, int i10, boolean z6) {
        boolean z10;
        int iM;
        this.intrinsics = multiParagraphIntrinsics;
        this.maxLines = i10;
        if (Constraints.p(j6) == 0 && Constraints.o(j6) == 0) {
            ArrayList arrayList = new ArrayList();
            List<ParagraphIntrinsicInfo> listF = multiParagraphIntrinsics.f();
            int size = listF.size();
            int i11 = 0;
            int i12 = 0;
            float f = 0.0f;
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    z10 = false;
                    break;
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = listF.get(i13);
                ParagraphIntrinsics paragraphIntrinsicsB = paragraphIntrinsicInfo.b();
                int iN = Constraints.n(j6);
                if (Constraints.i(j6)) {
                    iM = o.e(Constraints.m(j6) - ParagraphKt.d(f), i11);
                } else {
                    iM = Constraints.m(j6);
                }
                Paragraph paragraphC = ParagraphKt.c(paragraphIntrinsicsB, ConstraintsKt.b(0, iN, 0, iM, 5, null), this.maxLines - i12, z6);
                float height = f + paragraphC.getHeight();
                int iO = i12 + paragraphC.o();
                List<ParagraphIntrinsicInfo> list = listF;
                arrayList.add(new ParagraphInfo(paragraphC, paragraphIntrinsicInfo.c(), paragraphIntrinsicInfo.a(), i12, iO, f, height));
                if (paragraphC.q() || (iO == this.maxLines && i13 != v.o(this.intrinsics.f()))) {
                    z10 = true;
                    i12 = iO;
                    f = height;
                    break;
                } else {
                    i13++;
                    i12 = iO;
                    f = height;
                    i11 = 0;
                    listF = list;
                }
            }
            this.height = f;
            this.lineCount = i12;
            this.didExceedMaxLines = z10;
            this.paragraphInfoList = arrayList;
            this.width = Constraints.n(j6);
            List<Rect> arrayList2 = new ArrayList<>(arrayList.size());
            int size2 = arrayList.size();
            for (int i14 = 0; i14 < size2; i14++) {
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i14);
                List<Rect> listW = paragraphInfo.e().w();
                ArrayList arrayList3 = new ArrayList(listW.size());
                int size3 = listW.size();
                for (int i15 = 0; i15 < size3; i15++) {
                    Rect rect = listW.get(i15);
                    arrayList3.add(rect != null ? paragraphInfo.i(rect) : null);
                }
                a0.D(arrayList2, arrayList3);
            }
            if (arrayList2.size() < this.intrinsics.g().size()) {
                int size4 = this.intrinsics.g().size() - arrayList2.size();
                ArrayList arrayList4 = new ArrayList(size4);
                for (int i16 = 0; i16 < size4; i16++) {
                    arrayList4.add(null);
                }
                arrayList2 = d0.D0(arrayList2, arrayList4);
            }
            this.placeholderRects = arrayList2;
            return;
        }
        throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.".toString());
    }

    @NotNull
    public final ResolvedTextDirection b(int i10) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.e().v(paragraphInfo.p(i10));
    }

    @NotNull
    public final Rect c(int i10) {
        C(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.a(this.paragraphInfoList, i10));
        return paragraphInfo.i(paragraphInfo.e().b(paragraphInfo.p(i10)));
    }

    @NotNull
    public final Rect d(int i10) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.i(paragraphInfo.e().n(paragraphInfo.p(i10)));
    }

    public final float h(int i10, boolean z6) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.e().s(paragraphInfo.p(i10), z6);
    }

    public final float k(int i10) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.n(paragraphInfo.e().m(paragraphInfo.q(i10)));
    }

    public final int m(int i10, boolean z6) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.l(paragraphInfo.e().j(paragraphInfo.q(i10), z6));
    }

    public final int n(int i10) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.m(paragraphInfo.e().u(paragraphInfo.p(i10)));
    }

    public final float p(int i10) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.e().l(paragraphInfo.q(i10));
    }

    public final float q(int i10) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.e().p(paragraphInfo.q(i10));
    }

    public final int r(int i10) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.l(paragraphInfo.e().i(paragraphInfo.q(i10)));
    }

    public final float s(int i10) {
        E(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.b(this.paragraphInfoList, i10));
        return paragraphInfo.n(paragraphInfo.e().e(paragraphInfo.q(i10)));
    }

    public final int t(long j6) {
        int iC;
        if (Offset.n(j6) <= 0.0f) {
            iC = 0;
        } else if (Offset.n(j6) >= this.height) {
            iC = v.o(this.paragraphInfoList);
        } else {
            iC = MultiParagraphKt.c(this.paragraphInfoList, Offset.n(j6));
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iC);
        if (paragraphInfo.d() == 0) {
            return Math.max(0, paragraphInfo.f() - 1);
        }
        return paragraphInfo.l(paragraphInfo.e().h(paragraphInfo.o(j6)));
    }

    @NotNull
    public final ResolvedTextDirection u(int i10) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.e().c(paragraphInfo.p(i10));
    }

    public final long z(int i10) {
        int iA;
        D(i10);
        if (i10 == a().length()) {
            iA = v.o(this.paragraphInfoList);
        } else {
            iA = MultiParagraphKt.a(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(iA);
        return paragraphInfo.k(paragraphInfo.e().f(paragraphInfo.p(i10)));
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j6, int i10, boolean z6, int i11, k kVar) {
        this(multiParagraphIntrinsics, j6, (i11 & 4) != 0 ? Integer.MAX_VALUE : i10, (i11 & 8) != 0 ? false : z6, null);
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, int i10, boolean z6, float f, int i11, k kVar) {
        this(multiParagraphIntrinsics, (i11 & 2) != 0 ? Integer.MAX_VALUE : i10, (i11 & 4) != 0 ? false : z6, f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiParagraph(@NotNull MultiParagraphIntrinsics intrinsics, int i10, boolean z6, float f) {
        this(intrinsics, ConstraintsKt.b(0, ParagraphKt.d(f), 0, 0, 13, null), i10, z6, null);
        t.j(intrinsics, "intrinsics");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z6, float f, Density density, Font.ResourceLoader resourceLoader, int i11, k kVar) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) ((i11 & 4) != 0 ? v.m() : list), (i11 & 8) != 0 ? Integer.MAX_VALUE : i10, (i11 & 16) != 0 ? false : z6, f, density, resourceLoader);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiParagraph(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z6, float f, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        this(new MultiParagraphIntrinsics(annotatedString, style, placeholders, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader)), ConstraintsKt.b(0, ParagraphKt.d(f), 0, 0, 13, null), i10, z6, null);
        t.j(annotatedString, "annotatedString");
        t.j(style, "style");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(resourceLoader, "resourceLoader");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, float f, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z6, int i11, k kVar) {
        this(annotatedString, textStyle, f, density, resolver, (List<AnnotatedString.Range<Placeholder>>) ((i11 & 32) != 0 ? v.m() : list), (i11 & 64) != 0 ? Integer.MAX_VALUE : i10, (i11 & 128) != 0 ? false : z6);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiParagraph(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, float f, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z6) {
        this(new MultiParagraphIntrinsics(annotatedString, style, placeholders, density, fontFamilyResolver), ConstraintsKt.b(0, ParagraphKt.d(f), 0, 0, 13, null), i10, z6, null);
        t.j(annotatedString, "annotatedString");
        t.j(style, "style");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(placeholders, "placeholders");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j6, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z6, int i11, k kVar) {
        this(annotatedString, textStyle, j6, density, resolver, (i11 & 32) != 0 ? v.m() : list, (i11 & 64) != 0 ? Integer.MAX_VALUE : i10, (i11 & 128) != 0 ? false : z6, null);
    }

    private MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j6, Density density, FontFamily.Resolver resolver, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z6) {
        this(new MultiParagraphIntrinsics(annotatedString, textStyle, list, density, resolver), j6, i10, z6, null);
    }
}
