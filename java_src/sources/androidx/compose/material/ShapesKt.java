package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class ShapesKt {

    @NotNull
    private static final ProvidableCompositionLocal<Shapes> LocalShapes = CompositionLocalKt.e(ShapesKt$LocalShapes$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Shapes> a() {
        return LocalShapes;
    }
}
