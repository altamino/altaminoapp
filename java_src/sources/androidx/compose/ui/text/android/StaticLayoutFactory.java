package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class StaticLayoutFactory {

    @NotNull
    public static final StaticLayoutFactory INSTANCE = new StaticLayoutFactory();

    @NotNull
    private static final StaticLayoutFactoryImpl delegate = new StaticLayoutFactory23();

    @NotNull
    public final StaticLayout a(@NotNull CharSequence text, int i10, int i11, @NotNull TextPaint paint, int i12, @NotNull TextDirectionHeuristic textDir, @NotNull Layout.Alignment alignment, @IntRange int i13, @Nullable TextUtils.TruncateAt truncateAt, @IntRange int i14, @FloatRange float f, float f6, int i15, boolean z6, boolean z10, int i16, int i17, @Nullable int[] iArr, @Nullable int[] iArr2) {
        t.j(text, "text");
        t.j(paint, "paint");
        t.j(textDir, "textDir");
        t.j(alignment, "alignment");
        return delegate.a(new StaticLayoutParams(text, i10, i11, paint, i12, textDir, alignment, i13, truncateAt, i14, f, f6, i15, z6, z10, i16, i17, iArr, iArr2));
    }

    private StaticLayoutFactory() {
    }
}
