package androidx.compose.foundation;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.SolidColor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class BorderStrokeKt {
    @Stable
    @NotNull
    public static final BorderStroke a(float f, long j6) {
        return new BorderStroke(f, new SolidColor(j6, null), null);
    }
}
