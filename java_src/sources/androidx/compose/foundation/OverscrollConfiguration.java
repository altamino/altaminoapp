package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Stable
@ExperimentalFoundationApi
public final class OverscrollConfiguration {

    @NotNull
    private final PaddingValues drawPadding;
    private final long glowColor;

    public /* synthetic */ OverscrollConfiguration(long j6, PaddingValues paddingValues, k kVar) {
        this(j6, paddingValues);
    }

    @NotNull
    public final PaddingValues a() {
        return this.drawPadding;
    }

    public final long b() {
        return this.glowColor;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(OverscrollConfiguration.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.foundation.OverscrollConfiguration");
        }
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) obj;
        return Color.n(this.glowColor, overscrollConfiguration.glowColor) && t.e(this.drawPadding, overscrollConfiguration.drawPadding);
    }

    private OverscrollConfiguration(long j6, PaddingValues paddingValues) {
        this.glowColor = j6;
        this.drawPadding = paddingValues;
    }

    public int hashCode() {
        return (Color.t(this.glowColor) * 31) + this.drawPadding.hashCode();
    }

    @NotNull
    public String toString() {
        return "OverscrollConfiguration(glowColor=" + ((Object) Color.u(this.glowColor)) + ", drawPadding=" + this.drawPadding + ')';
    }

    public /* synthetic */ OverscrollConfiguration(long j6, PaddingValues paddingValues, int i10, k kVar) {
        this((i10 & 1) != 0 ? ColorKt.d(4284900966L) : j6, (i10 & 2) != 0 ? PaddingKt.c(0.0f, 0.0f, 3, null) : paddingValues, null);
    }
}
