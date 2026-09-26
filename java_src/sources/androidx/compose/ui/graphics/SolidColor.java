package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class SolidColor extends Brush {
    private final long value;

    public /* synthetic */ SolidColor(long j6, kotlin.jvm.internal.k kVar) {
        this(j6);
    }

    public final long c() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SolidColor) && Color.n(this.value, ((SolidColor) obj).value);
    }

    private SolidColor(long j6) {
        super(null);
        this.value = j6;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public void a(long j6, @NotNull Paint p, float f) {
        long jL;
        kotlin.jvm.internal.t.j(p, "p");
        p.b(1.0f);
        if (f == 1.0f) {
            jL = this.value;
        } else {
            long j10 = this.value;
            jL = Color.l(j10, Color.o(j10) * f, 0.0f, 0.0f, 0.0f, 14, null);
        }
        p.j(jL);
        if (p.n() != null) {
            p.x(null);
        }
    }

    public int hashCode() {
        return Color.t(this.value);
    }

    @NotNull
    public String toString() {
        return "SolidColor(value=" + ((Object) Color.u(this.value)) + ')';
    }
}
