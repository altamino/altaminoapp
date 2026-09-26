package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public interface Shape {
    @NotNull
    Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density);
}
