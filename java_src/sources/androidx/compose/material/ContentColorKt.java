package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ContentColorKt {

    @NotNull
    private static final ProvidableCompositionLocal<Color> LocalContentColor = CompositionLocalKt.d(null, ContentColorKt$LocalContentColor$1.INSTANCE, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<Color> a() {
        return LocalContentColor;
    }
}
