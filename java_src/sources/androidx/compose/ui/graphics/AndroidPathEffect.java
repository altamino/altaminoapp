package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPathEffect implements PathEffect {

    @NotNull
    private final android.graphics.PathEffect nativePathEffect;

    @NotNull
    public final android.graphics.PathEffect a() {
        return this.nativePathEffect;
    }

    public AndroidPathEffect(@NotNull android.graphics.PathEffect nativePathEffect) {
        kotlin.jvm.internal.t.j(nativePathEffect, "nativePathEffect");
        this.nativePathEffect = nativePathEffect;
    }
}
