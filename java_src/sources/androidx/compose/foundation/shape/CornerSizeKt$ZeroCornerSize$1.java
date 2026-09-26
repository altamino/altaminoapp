package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class CornerSizeKt$ZeroCornerSize$1 implements CornerSize, InspectableValue {
    @Override // androidx.compose.foundation.shape.CornerSize
    public float a(long j6, @NotNull Density density) {
        t.j(density, "density");
        return 0.0f;
    }

    @NotNull
    public String toString() {
        return "ZeroCornerSize";
    }

    CornerSizeKt$ZeroCornerSize$1() {
    }
}
