package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import androidx.annotation.IntRange;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@InternalPlatformTextApi
public final class LineHeightStyleSpan implements android.text.style.LineHeightSpan {
    private int ascent;
    private int descent;
    private final int endIndex;
    private int firstAscent;
    private int firstAscentDiff;
    private int lastDescent;
    private int lastDescentDiff;
    private final float lineHeight;
    private final int startIndex;
    private final int topPercentage;
    private final boolean trimFirstLineTop;
    private final boolean trimLastLineBottom;

    public final int b() {
        return this.firstAscentDiff;
    }

    public final int c() {
        return this.lastDescentDiff;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(@NotNull CharSequence text, int i10, int i11, int i12, int i13, @NotNull Paint.FontMetricsInt fontMetricsInt) {
        t.j(text, "text");
        t.j(fontMetricsInt, "fontMetricsInt");
        if (LineHeightStyleSpanKt.a(fontMetricsInt) <= 0) {
            return;
        }
        boolean z6 = i10 == this.startIndex;
        boolean z10 = i11 == this.endIndex;
        if (z6 && z10 && this.trimFirstLineTop && this.trimLastLineBottom) {
            return;
        }
        if (z6) {
            a(fontMetricsInt);
        }
        fontMetricsInt.ascent = z6 ? this.firstAscent : this.ascent;
        fontMetricsInt.descent = z10 ? this.lastDescent : this.descent;
    }

    public LineHeightStyleSpan(float f, int i10, int i11, boolean z6, boolean z10, @IntRange int i12) {
        this.lineHeight = f;
        this.startIndex = i10;
        this.endIndex = i11;
        this.trimFirstLineTop = z6;
        this.trimLastLineBottom = z10;
        this.topPercentage = i12;
        if ((i12 >= 0 && i12 < 101) || i12 == -1) {
        } else {
            throw new IllegalStateException("topRatio should be in [0..100] range or -1".toString());
        }
    }

    private final void a(Paint.FontMetricsInt fontMetricsInt) {
        double dCeil;
        int iA = LineHeightStyleSpanKt.a(fontMetricsInt);
        int iCeil = (int) Math.ceil(this.lineHeight);
        int i10 = iCeil - iA;
        int iAbs = this.topPercentage;
        if (iAbs == -1) {
            iAbs = (int) ((Math.abs(fontMetricsInt.ascent) / LineHeightStyleSpanKt.a(fontMetricsInt)) * 100.0f);
        }
        if (i10 <= 0) {
            dCeil = Math.ceil((i10 * iAbs) / 100.0f);
        } else {
            dCeil = Math.ceil((i10 * (100 - iAbs)) / 100.0f);
        }
        int i11 = (int) dCeil;
        int i12 = fontMetricsInt.descent;
        int i13 = i11 + i12;
        this.descent = i13;
        int i14 = i13 - iCeil;
        this.ascent = i14;
        if (this.trimFirstLineTop) {
            i14 = fontMetricsInt.ascent;
        }
        this.firstAscent = i14;
        if (this.trimLastLineBottom) {
            i13 = i12;
        }
        this.lastDescent = i13;
        this.firstAscentDiff = fontMetricsInt.ascent - i14;
        this.lastDescentDiff = i13 - i12;
    }
}
