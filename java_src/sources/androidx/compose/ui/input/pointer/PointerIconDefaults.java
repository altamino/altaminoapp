package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class PointerIconDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final PointerIconDefaults INSTANCE = new PointerIconDefaults();

    @NotNull
    private static final PointerIcon Default = PointerIcon_androidKt.c();

    @NotNull
    private static final PointerIcon Crosshair = PointerIcon_androidKt.b();

    @NotNull
    private static final PointerIcon Text = PointerIcon_androidKt.e();

    @NotNull
    private static final PointerIcon Hand = PointerIcon_androidKt.d();

    private PointerIconDefaults() {
    }
}
