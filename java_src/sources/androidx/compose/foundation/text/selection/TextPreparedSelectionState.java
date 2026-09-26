package androidx.compose.foundation.text.selection;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TextPreparedSelectionState {

    @Nullable
    private Float cachedX;

    @Nullable
    public final Float a() {
        return this.cachedX;
    }

    public final void b() {
        this.cachedX = null;
    }

    public final void c(@Nullable Float f) {
        this.cachedX = f;
    }
}
