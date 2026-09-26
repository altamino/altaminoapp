package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public abstract class PointerInputFilter {
    public static final int $stable = 8;
    private boolean isAttached;

    @Nullable
    private LayoutCoordinates layoutCoordinates;

    public final boolean H() {
        return this.isAttached;
    }

    public abstract void I();

    public abstract void U(@NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pointerEventPass, long j6);

    public final void e0(boolean z6) {
        this.isAttached = z6;
    }

    public final void f0(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    public boolean p() {
        return false;
    }

    @Nullable
    public final LayoutCoordinates u() {
        return this.layoutCoordinates;
    }

    @ExperimentalComposeUiApi
    public boolean x() {
        return false;
    }

    public final long a() {
        LayoutCoordinates layoutCoordinates = this.layoutCoordinates;
        return layoutCoordinates != null ? layoutCoordinates.a() : IntSize.Companion.a();
    }
}
