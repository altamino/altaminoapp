package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ContentAlphaKt {

    @NotNull
    private static final ProvidableCompositionLocal<Float> LocalContentAlpha = CompositionLocalKt.d(null, ContentAlphaKt$LocalContentAlpha$1.INSTANCE, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<Float> a() {
        return LocalContentAlpha;
    }
}
