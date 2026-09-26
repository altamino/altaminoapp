package androidx.compose.ui.text;

import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {

    @NotNull
    private final AnnotatedString annotatedString;

    @NotNull
    private final List<ParagraphIntrinsicInfo> infoList;

    @NotNull
    private final m maxIntrinsicWidth$delegate;

    @NotNull
    private final m minIntrinsicWidth$delegate;

    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;

    public MultiParagraphIntrinsics(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        AnnotatedString annotatedString2 = annotatedString;
        t.j(annotatedString2, "annotatedString");
        t.j(style, "style");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        this.annotatedString = annotatedString2;
        this.placeholders = placeholders;
        q qVar = q.NONE;
        this.minIntrinsicWidth$delegate = o.b(qVar, new MultiParagraphIntrinsics$minIntrinsicWidth$2(this));
        this.maxIntrinsicWidth$delegate = o.b(qVar, new MultiParagraphIntrinsics$maxIntrinsicWidth$2(this));
        ParagraphStyle paragraphStyleD = style.D();
        List<AnnotatedString.Range<ParagraphStyle>> listH = AnnotatedStringKt.h(annotatedString2, paragraphStyleD);
        ArrayList arrayList = new ArrayList(listH.size());
        int size = listH.size();
        int i10 = 0;
        while (i10 < size) {
            AnnotatedString.Range<ParagraphStyle> range = listH.get(i10);
            AnnotatedString annotatedStringI = AnnotatedStringKt.i(annotatedString2, range.f(), range.d());
            arrayList.add(new ParagraphIntrinsicInfo(ParagraphIntrinsicsKt.a(annotatedStringI.g(), style.B(h(range.e(), paragraphStyleD)), annotatedStringI.e(), MultiParagraphIntrinsicsKt.b(g(), range.f(), range.d()), density, fontFamilyResolver), range.f(), range.d()));
            i10++;
            annotatedString2 = annotatedString;
        }
        this.infoList = arrayList;
    }

    @NotNull
    public final AnnotatedString e() {
        return this.annotatedString;
    }

    @NotNull
    public final List<ParagraphIntrinsicInfo> f() {
        return this.infoList;
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> g() {
        return this.placeholders;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float a() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean b() {
        List<ParagraphIntrinsicInfo> list = this.infoList;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10).b().b()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float c() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParagraphStyle h(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2) {
        TextDirection textDirectionG = paragraphStyle.g();
        if (textDirectionG != null) {
            textDirectionG.l();
            return paragraphStyle;
        }
        return ParagraphStyle.b(paragraphStyle, null, paragraphStyle2.g(), 0L, null, 13, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiParagraphIntrinsics(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        this(annotatedString, style, placeholders, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader));
        t.j(annotatedString, "annotatedString");
        t.j(style, "style");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(resourceLoader, "resourceLoader");
    }
}
