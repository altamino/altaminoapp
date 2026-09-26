package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class BoringLayoutFactory {

    @NotNull
    public static final BoringLayoutFactory INSTANCE = new BoringLayoutFactory();

    @NotNull
    public final BoringLayout a(@NotNull CharSequence text, @NotNull TextPaint paint, int i10, @NotNull BoringLayout.Metrics metrics, @NotNull Layout.Alignment alignment, boolean z6, @Nullable TextUtils.TruncateAt truncateAt, int i11) {
        t.j(text, "text");
        t.j(paint, "paint");
        t.j(metrics, "metrics");
        t.j(alignment, "alignment");
        if (i10 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i11 >= 0) {
            return truncateAt == null ? new BoringLayout(text, paint, i10, alignment, 1.0f, 0.0f, metrics, z6) : new BoringLayout(text, paint, i10, alignment, 1.0f, 0.0f, metrics, z6, truncateAt, i11);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Nullable
    public final BoringLayout.Metrics b(@NotNull CharSequence text, @Nullable TextPaint textPaint, @NotNull TextDirectionHeuristic textDir) {
        t.j(text, "text");
        t.j(textDir, "textDir");
        if (textDir.isRtl(text, 0, text.length())) {
            return null;
        }
        return BoringLayout.isBoring(text, textPaint, null);
    }

    private BoringLayoutFactory() {
    }
}
