package androidx.compose.foundation;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class BorderStroke {

    @NotNull
    private final Brush brush;
    private final float width;

    public /* synthetic */ BorderStroke(float f, Brush brush, k kVar) {
        this(f, brush);
    }

    @NotNull
    public final Brush a() {
        return this.brush;
    }

    public final float b() {
        return this.width;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        return Dp.i(this.width, borderStroke.width) && t.e(this.brush, borderStroke.brush);
    }

    private BorderStroke(float f, Brush brush) {
        this.width = f;
        this.brush = brush;
    }

    public int hashCode() {
        return (Dp.j(this.width) * 31) + this.brush.hashCode();
    }

    @NotNull
    public String toString() {
        return "BorderStroke(width=" + ((Object) Dp.k(this.width)) + ", brush=" + this.brush + ')';
    }
}
