package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class LocalSoftwareKeyboardController {
    public static final int $stable = 0;

    @NotNull
    public static final LocalSoftwareKeyboardController INSTANCE = new LocalSoftwareKeyboardController();

    @NotNull
    private static final ProvidableCompositionLocal<SoftwareKeyboardController> LocalSoftwareKeyboardController = CompositionLocalKt.d(null, LocalSoftwareKeyboardController$LocalSoftwareKeyboardController$1.INSTANCE, 1, null);

    private LocalSoftwareKeyboardController() {
    }
}
