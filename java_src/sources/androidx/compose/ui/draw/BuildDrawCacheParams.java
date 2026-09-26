package androidx.compose.ui.draw;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface BuildDrawCacheParams {
    long c();

    @NotNull
    Density getDensity();

    @NotNull
    LayoutDirection getLayoutDirection();
}
