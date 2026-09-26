package androidx.window.layout;

import androidx.annotation.RestrictTo;
import androidx.window.core.ExperimentalWindowApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalWindowApi
@RestrictTo
public interface WindowMetricsCalculatorDecorator {
    @ExperimentalWindowApi
    @RestrictTo
    @NotNull
    WindowMetricsCalculator a(@NotNull WindowMetricsCalculator windowMetricsCalculator);
}
