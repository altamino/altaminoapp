package androidx.compose.material.ripple;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class RippleAlpha {
    private final float draggedAlpha;
    private final float focusedAlpha;
    private final float hoveredAlpha;
    private final float pressedAlpha;

    public final float a() {
        return this.draggedAlpha;
    }

    public final float b() {
        return this.focusedAlpha;
    }

    public final float c() {
        return this.hoveredAlpha;
    }

    public final float d() {
        return this.pressedAlpha;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleAlpha)) {
            return false;
        }
        RippleAlpha rippleAlpha = (RippleAlpha) obj;
        return this.draggedAlpha == rippleAlpha.draggedAlpha && this.focusedAlpha == rippleAlpha.focusedAlpha && this.hoveredAlpha == rippleAlpha.hoveredAlpha && this.pressedAlpha == rippleAlpha.pressedAlpha;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.draggedAlpha) * 31) + Float.floatToIntBits(this.focusedAlpha)) * 31) + Float.floatToIntBits(this.hoveredAlpha)) * 31) + Float.floatToIntBits(this.pressedAlpha);
    }

    @NotNull
    public String toString() {
        return "RippleAlpha(draggedAlpha=" + this.draggedAlpha + ", focusedAlpha=" + this.focusedAlpha + ", hoveredAlpha=" + this.hoveredAlpha + ", pressedAlpha=" + this.pressedAlpha + ')';
    }

    public RippleAlpha(float f, float f6, float f7, float f10) {
        this.draggedAlpha = f;
        this.focusedAlpha = f6;
        this.hoveredAlpha = f7;
        this.pressedAlpha = f10;
    }
}
