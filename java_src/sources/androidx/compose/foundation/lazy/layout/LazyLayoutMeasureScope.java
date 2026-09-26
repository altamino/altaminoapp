package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Stable
@ExperimentalFoundationApi
public interface LazyLayoutMeasureScope extends MeasureScope {
    @Override // androidx.compose.ui.unit.Density
    @Stable
    float j(int i10);

    @NotNull
    Placeable[] t(int i10, long j6);
}
