package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ParagraphInfo {
    private float bottom;
    private final int endIndex;
    private int endLineIndex;

    @NotNull
    private final Paragraph paragraph;
    private final int startIndex;
    private int startLineIndex;
    private float top;

    public ParagraphInfo(@NotNull Paragraph paragraph, int i10, int i11, int i12, int i13, float f, float f6) {
        t.j(paragraph, "paragraph");
        this.paragraph = paragraph;
        this.startIndex = i10;
        this.endIndex = i11;
        this.startLineIndex = i12;
        this.endLineIndex = i13;
        this.top = f;
        this.bottom = f6;
    }

    public final float a() {
        return this.bottom;
    }

    public final int b() {
        return this.endIndex;
    }

    public final int c() {
        return this.endLineIndex;
    }

    public final int d() {
        return this.endIndex - this.startIndex;
    }

    @NotNull
    public final Paragraph e() {
        return this.paragraph;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphInfo)) {
            return false;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
        return t.e(this.paragraph, paragraphInfo.paragraph) && this.startIndex == paragraphInfo.startIndex && this.endIndex == paragraphInfo.endIndex && this.startLineIndex == paragraphInfo.startLineIndex && this.endLineIndex == paragraphInfo.endLineIndex && t.e(Float.valueOf(this.top), Float.valueOf(paragraphInfo.top)) && t.e(Float.valueOf(this.bottom), Float.valueOf(paragraphInfo.bottom));
    }

    public final int f() {
        return this.startIndex;
    }

    public final int g() {
        return this.startLineIndex;
    }

    public final float h() {
        return this.top;
    }

    public int hashCode() {
        return (((((((((((this.paragraph.hashCode() * 31) + this.startIndex) * 31) + this.endIndex) * 31) + this.startLineIndex) * 31) + this.endLineIndex) * 31) + Float.floatToIntBits(this.top)) * 31) + Float.floatToIntBits(this.bottom);
    }

    public final int l(int i10) {
        return i10 + this.startIndex;
    }

    public final int m(int i10) {
        return i10 + this.startLineIndex;
    }

    public final float n(float f) {
        return f + this.top;
    }

    public final int q(int i10) {
        return i10 - this.startLineIndex;
    }

    public final float r(float f) {
        return f - this.top;
    }

    @NotNull
    public String toString() {
        return "ParagraphInfo(paragraph=" + this.paragraph + ", startIndex=" + this.startIndex + ", endIndex=" + this.endIndex + ", startLineIndex=" + this.startLineIndex + ", endLineIndex=" + this.endLineIndex + ", top=" + this.top + ", bottom=" + this.bottom + ')';
    }

    public /* synthetic */ ParagraphInfo(Paragraph paragraph, int i10, int i11, int i12, int i13, float f, float f6, int i14, k kVar) {
        this(paragraph, i10, i11, (i14 & 8) != 0 ? -1 : i12, (i14 & 16) != 0 ? -1 : i13, (i14 & 32) != 0 ? -1.0f : f, (i14 & 64) != 0 ? -1.0f : f6);
    }

    @NotNull
    public final Rect i(@NotNull Rect rect) {
        t.j(rect, "<this>");
        return rect.t(OffsetKt.a(0.0f, this.top));
    }

    @NotNull
    public final Path j(@NotNull Path path) {
        t.j(path, "<this>");
        path.d(OffsetKt.a(0.0f, this.top));
        return path;
    }

    public final int p(int i10) {
        return o.n(i10, this.startIndex, this.endIndex) - this.startIndex;
    }

    public final long k(long j6) {
        return TextRangeKt.b(l(TextRange.n(j6)), l(TextRange.i(j6)));
    }

    public final long o(long j6) {
        return OffsetKt.a(Offset.m(j6), Offset.n(j6) - this.top);
    }
}
