package androidx.compose.ui.text.android;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class HorizontalPositionCache {
    private int cachedKey;
    private float cachedValue;

    @NotNull
    private final TextLayout layout;

    public HorizontalPositionCache(@NotNull TextLayout layout) {
        t.j(layout, "layout");
        this.layout = layout;
        this.cachedKey = -1;
    }
}
