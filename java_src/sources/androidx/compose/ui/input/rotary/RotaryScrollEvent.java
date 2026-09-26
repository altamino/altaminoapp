package androidx.compose.ui.input.rotary;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.input.focus.FocusAwareEvent;
import i.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class RotaryScrollEvent implements FocusAwareEvent {
    public static final int $stable = 0;
    private final float horizontalScrollPixels;
    private final long uptimeMillis;
    private final float verticalScrollPixels;

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof RotaryScrollEvent) {
            RotaryScrollEvent rotaryScrollEvent = (RotaryScrollEvent) obj;
            if (rotaryScrollEvent.verticalScrollPixels == this.verticalScrollPixels && rotaryScrollEvent.horizontalScrollPixels == this.horizontalScrollPixels && rotaryScrollEvent.uptimeMillis == this.uptimeMillis) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.verticalScrollPixels) * 31) + Float.floatToIntBits(this.horizontalScrollPixels)) * 31) + a.a(this.uptimeMillis);
    }

    @NotNull
    public String toString() {
        return "RotaryScrollEvent(verticalScrollPixels=" + this.verticalScrollPixels + ",horizontalScrollPixels=" + this.horizontalScrollPixels + ",uptimeMillis=" + this.uptimeMillis + ')';
    }

    public RotaryScrollEvent(float f, float f6, long j6) {
        this.verticalScrollPixels = f;
        this.horizontalScrollPixels = f6;
        this.uptimeMillis = j6;
    }
}
