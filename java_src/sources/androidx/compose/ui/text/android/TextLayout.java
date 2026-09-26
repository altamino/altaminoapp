package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Px;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
@InternalPlatformTextApi
public final class TextLayout {
    private final int bottomPadding;
    private final boolean didExceedMaxLines;
    private final boolean fallbackLineSpacing;
    private final boolean includePadding;
    private final boolean isBoringLayout;

    @NotNull
    private final Layout layout;

    @NotNull
    private final m layoutHelper$delegate;

    @NotNull
    private final LayoutIntrinsics layoutIntrinsics;
    private final int lineCount;
    private final int topPadding;

    public TextLayout(@NotNull CharSequence charSequence, float f, @NotNull TextPaint textPaint, int i10, @Nullable TextUtils.TruncateAt truncateAt, int i11, float f6, @Px float f7, boolean z6, boolean z10, int i12, int i13, int i14, int i15, @Nullable int[] iArr, @Nullable int[] iArr2, @NotNull LayoutIntrinsics layoutIntrinsics) {
        boolean z11;
        Layout layoutA;
        t.j(charSequence, "charSequence");
        t.j(textPaint, "textPaint");
        t.j(layoutIntrinsics, "layoutIntrinsics");
        this.includePadding = z6;
        this.fallbackLineSpacing = z10;
        this.layoutIntrinsics = layoutIntrinsics;
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristicE = TextLayoutKt.e(i11);
        Layout.Alignment alignmentA = TextAlignmentAdapter.INSTANCE.a(i10);
        boolean z12 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, BaselineShiftSpan.class) < length;
        BoringLayout.Metrics metricsA = layoutIntrinsics.a();
        double d = f;
        int iCeil = (int) Math.ceil(d);
        if (metricsA == null || layoutIntrinsics.b() > f || z12) {
            this.isBoringLayout = false;
            z11 = false;
            layoutA = StaticLayoutFactory.INSTANCE.a(charSequence, 0, charSequence.length(), textPaint, iCeil, textDirectionHeuristicE, alignmentA, i12, truncateAt, (int) Math.ceil(d), f6, f7, i15, z6, z10, i13, i14, iArr, iArr2);
        } else {
            this.isBoringLayout = true;
            layoutA = BoringLayoutFactory.INSTANCE.a(charSequence, textPaint, iCeil, metricsA, alignmentA, z6, truncateAt, iCeil);
            z11 = false;
        }
        this.layout = layoutA;
        int iMin = Math.min(layoutA.getLineCount(), i12);
        this.lineCount = iMin;
        this.didExceedMaxLines = (iMin >= i12 && (layoutA.getEllipsisCount(iMin + (-1)) > 0 || layoutA.getLineEnd(iMin + (-1)) != charSequence.length())) ? true : z11;
        u uVarF = TextLayoutKt.f(this);
        u uVarC = TextLayoutKt.c(this);
        this.topPadding = Math.max(((Number) uVarF.c()).intValue(), ((Number) uVarC.c()).intValue());
        this.bottomPadding = Math.max(((Number) uVarF.d()).intValue(), ((Number) uVarC.d()).intValue());
        this.layoutHelper$delegate = o.b(q.NONE, new TextLayout$layoutHelper$2(this));
    }

    public final boolean A() {
        return this.fallbackLineSpacing && !this.isBoringLayout && Build.VERSION.SDK_INT >= 28;
    }

    public final boolean a() {
        return this.didExceedMaxLines;
    }

    public final boolean c() {
        return this.includePadding;
    }

    @NotNull
    public final Layout d() {
        return this.layout;
    }

    public final int h() {
        return this.lineCount;
    }

    private final LayoutHelper e() {
        return (LayoutHelper) this.layoutHelper$delegate.getValue();
    }

    public static /* synthetic */ float v(TextLayout textLayout, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        return textLayout.u(i10, z6);
    }

    public static /* synthetic */ float x(TextLayout textLayout, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        return textLayout.w(i10, z6);
    }

    public final boolean B(int i10) {
        return this.layout.isRtlCharAt(i10);
    }

    public final void C(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        int i10 = this.topPadding;
        if (i10 != 0) {
            canvas.translate(0.0f, i10);
        }
        this.layout.draw(canvas);
        int i11 = this.topPadding;
        if (i11 != 0) {
            canvas.translate(0.0f, (-1) * i11);
        }
    }

    public final int b() {
        return (this.didExceedMaxLines ? this.layout.getLineBottom(this.lineCount - 1) : this.layout.getHeight()) + this.topPadding + this.bottomPadding;
    }

    public final float f(int i10) {
        return this.topPadding + this.layout.getLineBaseline(i10);
    }

    public final float g(int i10) {
        return this.topPadding + this.layout.getLineBottom(i10) + (i10 == this.lineCount + (-1) ? this.bottomPadding : 0);
    }

    public final int i(int i10) {
        return this.layout.getEllipsisCount(i10);
    }

    public final int j(int i10) {
        return this.layout.getEllipsisStart(i10);
    }

    public final int k(int i10) {
        return this.layout.getEllipsisStart(i10) == 0 ? this.layout.getLineEnd(i10) : this.layout.getText().length();
    }

    public final int l(int i10) {
        return this.layout.getLineForOffset(i10);
    }

    public final int m(int i10) {
        return this.layout.getLineForVertical(this.topPadding + i10);
    }

    public final float n(int i10) {
        return this.layout.getLineLeft(i10);
    }

    public final float o(int i10) {
        return this.layout.getLineRight(i10);
    }

    public final int p(int i10) {
        return this.layout.getLineStart(i10);
    }

    public final float q(int i10) {
        return this.layout.getLineTop(i10) + (i10 == 0 ? 0 : this.topPadding);
    }

    public final int r(int i10) {
        if (this.layout.getEllipsisStart(i10) == 0) {
            return this.layout.getLineVisibleEnd(i10);
        }
        return this.layout.getEllipsisStart(i10) + this.layout.getLineStart(i10);
    }

    public final int s(int i10, float f) {
        return this.layout.getOffsetForHorizontal(i10, f);
    }

    public final int t(int i10) {
        return this.layout.getParagraphDirection(i10);
    }

    public final void y(int i10, int i11, @NotNull Path dest) {
        t.j(dest, "dest");
        this.layout.getSelectionPath(i10, i11, dest);
        if (this.topPadding == 0 || dest.isEmpty()) {
            return;
        }
        dest.offset(0.0f, this.topPadding);
    }

    @NotNull
    public final CharSequence z() {
        CharSequence text = this.layout.getText();
        t.i(text, "layout.text");
        return text;
    }

    public final float u(int i10, boolean z6) {
        return e().c(i10, true, z6);
    }

    public final float w(int i10, boolean z6) {
        return e().c(i10, false, z6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextLayout(CharSequence charSequence, float f, TextPaint textPaint, int i10, TextUtils.TruncateAt truncateAt, int i11, float f6, float f7, boolean z6, boolean z10, int i12, int i13, int i14, int i15, int[] iArr, int[] iArr2, LayoutIntrinsics layoutIntrinsics, int i16, k kVar) {
        float f10 = (i16 & 2) != 0 ? 0.0f : f;
        int i17 = (i16 & 8) != 0 ? 0 : i10;
        TextUtils.TruncateAt truncateAt2 = (i16 & 16) != 0 ? null : truncateAt;
        int i18 = (i16 & 32) != 0 ? 2 : i11;
        this(charSequence, f10, textPaint, i17, truncateAt2, i18, (i16 & 64) != 0 ? 1.0f : f6, (i16 & 128) != 0 ? 0.0f : f7, (i16 & 256) != 0 ? false : z6, (i16 & 512) != 0 ? true : z10, (i16 & 1024) != 0 ? Integer.MAX_VALUE : i12, (i16 & 2048) != 0 ? 0 : i13, (i16 & 4096) != 0 ? 0 : i14, (i16 & 8192) != 0 ? 0 : i15, (i16 & 16384) != 0 ? null : iArr, (32768 & i16) != 0 ? null : iArr2, (i16 & 65536) != 0 ? new LayoutIntrinsics(charSequence, textPaint, i18) : layoutIntrinsics);
    }
}
