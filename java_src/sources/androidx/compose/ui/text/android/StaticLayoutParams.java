package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class StaticLayoutParams {

    @NotNull
    private final Layout.Alignment alignment;
    private final int breakStrategy;

    @Nullable
    private final TextUtils.TruncateAt ellipsize;
    private final int ellipsizedWidth;
    private final int end;
    private final int hyphenationFrequency;
    private final boolean includePadding;
    private final int justificationMode;

    @Nullable
    private final int[] leftIndents;
    private final float lineSpacingExtra;
    private final float lineSpacingMultiplier;
    private final int maxLines;

    @NotNull
    private final TextPaint paint;

    @Nullable
    private final int[] rightIndents;
    private final int start;

    @NotNull
    private final CharSequence text;

    @NotNull
    private final TextDirectionHeuristic textDir;
    private final boolean useFallbackLineSpacing;
    private final int width;

    public StaticLayoutParams(@NotNull CharSequence text, int i10, int i11, @NotNull TextPaint paint, int i12, @NotNull TextDirectionHeuristic textDir, @NotNull Layout.Alignment alignment, int i13, @Nullable TextUtils.TruncateAt truncateAt, int i14, float f, float f6, int i15, boolean z6, boolean z10, int i16, int i17, @Nullable int[] iArr, @Nullable int[] iArr2) {
        t.j(text, "text");
        t.j(paint, "paint");
        t.j(textDir, "textDir");
        t.j(alignment, "alignment");
        this.text = text;
        this.start = i10;
        this.end = i11;
        this.paint = paint;
        this.width = i12;
        this.textDir = textDir;
        this.alignment = alignment;
        this.maxLines = i13;
        this.ellipsize = truncateAt;
        this.ellipsizedWidth = i14;
        this.lineSpacingMultiplier = f;
        this.lineSpacingExtra = f6;
        this.justificationMode = i15;
        this.includePadding = z6;
        this.useFallbackLineSpacing = z10;
        this.breakStrategy = i16;
        this.hyphenationFrequency = i17;
        this.leftIndents = iArr;
        this.rightIndents = iArr2;
        if (i10 < 0 || i10 > i11) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int length = text.length();
        if (i11 < 0 || i11 > length) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i13 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (f < 0.0f) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    @NotNull
    public final Layout.Alignment a() {
        return this.alignment;
    }

    public final int b() {
        return this.breakStrategy;
    }

    @Nullable
    public final TextUtils.TruncateAt c() {
        return this.ellipsize;
    }

    public final int d() {
        return this.ellipsizedWidth;
    }

    public final int e() {
        return this.end;
    }

    public final int f() {
        return this.hyphenationFrequency;
    }

    public final boolean g() {
        return this.includePadding;
    }

    public final int h() {
        return this.justificationMode;
    }

    @Nullable
    public final int[] i() {
        return this.leftIndents;
    }

    public final float j() {
        return this.lineSpacingExtra;
    }

    public final float k() {
        return this.lineSpacingMultiplier;
    }

    public final int l() {
        return this.maxLines;
    }

    @NotNull
    public final TextPaint m() {
        return this.paint;
    }

    @Nullable
    public final int[] n() {
        return this.rightIndents;
    }

    public final int o() {
        return this.start;
    }

    @NotNull
    public final CharSequence p() {
        return this.text;
    }

    @NotNull
    public final TextDirectionHeuristic q() {
        return this.textDir;
    }

    public final boolean r() {
        return this.useFallbackLineSpacing;
    }

    public final int s() {
        return this.width;
    }

    public /* synthetic */ StaticLayoutParams(CharSequence charSequence, int i10, int i11, TextPaint textPaint, int i12, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i13, TextUtils.TruncateAt truncateAt, int i14, float f, float f6, int i15, boolean z6, boolean z10, int i16, int i17, int[] iArr, int[] iArr2, int i18, k kVar) {
        this(charSequence, (i18 & 2) != 0 ? 0 : i10, i11, textPaint, i12, textDirectionHeuristic, alignment, i13, truncateAt, i14, f, f6, i15, z6, z10, i16, i17, iArr, iArr2);
    }
}
