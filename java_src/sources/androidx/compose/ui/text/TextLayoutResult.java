package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TextLayoutResult {
    private final float firstBaseline;
    private final float lastBaseline;

    @NotNull
    private final TextLayoutInput layoutInput;

    @NotNull
    private final MultiParagraph multiParagraph;

    @NotNull
    private final List<Rect> placeholderRects;
    private final long size;

    public /* synthetic */ TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j6, k kVar) {
        this(textLayoutInput, multiParagraph, j6);
    }

    public final long A() {
        return this.size;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutResult)) {
            return false;
        }
        TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
        return t.e(this.layoutInput, textLayoutResult.layoutInput) && t.e(this.multiParagraph, textLayoutResult.multiParagraph) && IntSize.e(this.size, textLayoutResult.size) && this.firstBaseline == textLayoutResult.firstBaseline && this.lastBaseline == textLayoutResult.lastBaseline && t.e(this.placeholderRects, textLayoutResult.placeholderRects);
    }

    public final float g() {
        return this.firstBaseline;
    }

    public final float j() {
        return this.lastBaseline;
    }

    @NotNull
    public final TextLayoutInput k() {
        return this.layoutInput;
    }

    @NotNull
    public final MultiParagraph v() {
        return this.multiParagraph;
    }

    @NotNull
    public final List<Rect> z() {
        return this.placeholderRects;
    }

    private TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j6) {
        this.layoutInput = textLayoutInput;
        this.multiParagraph = multiParagraph;
        this.size = j6;
        this.firstBaseline = multiParagraph.f();
        this.lastBaseline = multiParagraph.j();
        this.placeholderRects = multiParagraph.x();
    }

    public static /* synthetic */ int o(TextLayoutResult textLayoutResult, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        return textLayoutResult.n(i10, z6);
    }

    public final long B(int i10) {
        return this.multiParagraph.z(i10);
    }

    @NotNull
    public final TextLayoutResult a(@NotNull TextLayoutInput layoutInput, long j6) {
        t.j(layoutInput, "layoutInput");
        return new TextLayoutResult(layoutInput, this.multiParagraph, j6, null);
    }

    @NotNull
    public final ResolvedTextDirection b(int i10) {
        return this.multiParagraph.b(i10);
    }

    @NotNull
    public final Rect c(int i10) {
        return this.multiParagraph.c(i10);
    }

    @NotNull
    public final Rect d(int i10) {
        return this.multiParagraph.d(i10);
    }

    public final boolean e() {
        return this.multiParagraph.e() || ((float) IntSize.f(this.size)) < this.multiParagraph.g();
    }

    public final boolean f() {
        return ((float) IntSize.g(this.size)) < this.multiParagraph.y();
    }

    public int hashCode() {
        return (((((((((this.layoutInput.hashCode() * 31) + this.multiParagraph.hashCode()) * 31) + IntSize.h(this.size)) * 31) + Float.floatToIntBits(this.firstBaseline)) * 31) + Float.floatToIntBits(this.lastBaseline)) * 31) + this.placeholderRects.hashCode();
    }

    public final float i(int i10, boolean z6) {
        return this.multiParagraph.h(i10, z6);
    }

    public final float l(int i10) {
        return this.multiParagraph.k(i10);
    }

    public final int m() {
        return this.multiParagraph.l();
    }

    public final int n(int i10, boolean z6) {
        return this.multiParagraph.m(i10, z6);
    }

    public final int p(int i10) {
        return this.multiParagraph.n(i10);
    }

    public final int q(float f) {
        return this.multiParagraph.o(f);
    }

    public final float r(int i10) {
        return this.multiParagraph.p(i10);
    }

    public final float s(int i10) {
        return this.multiParagraph.q(i10);
    }

    public final int t(int i10) {
        return this.multiParagraph.r(i10);
    }

    @NotNull
    public String toString() {
        return "TextLayoutResult(layoutInput=" + this.layoutInput + ", multiParagraph=" + this.multiParagraph + ", size=" + ((Object) IntSize.i(this.size)) + ", firstBaseline=" + this.firstBaseline + ", lastBaseline=" + this.lastBaseline + ", placeholderRects=" + this.placeholderRects + ')';
    }

    public final float u(int i10) {
        return this.multiParagraph.s(i10);
    }

    public final int w(long j6) {
        return this.multiParagraph.t(j6);
    }

    @NotNull
    public final ResolvedTextDirection x(int i10) {
        return this.multiParagraph.u(i10);
    }

    @NotNull
    public final Path y(int i10, int i11) {
        return this.multiParagraph.w(i10, i11);
    }

    public final boolean h() {
        if (!f() && !e()) {
            return false;
        }
        return true;
    }
}
