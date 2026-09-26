package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class FixedScale implements ContentScale {
    private final float value;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FixedScale) && t.e(Float.valueOf(this.value), Float.valueOf(((FixedScale) obj).value));
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    @NotNull
    public String toString() {
        return "FixedScale(value=" + this.value + ')';
    }

    @Override // androidx.compose.ui.layout.ContentScale
    public long a(long j6, long j10) {
        float f = this.value;
        return ScaleFactorKt.a(f, f);
    }

    public FixedScale(float f) {
        this.value = f;
    }
}
