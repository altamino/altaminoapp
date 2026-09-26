package androidx.compose.ui.graphics;

import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public abstract class RenderEffect {

    @Nullable
    private android.graphics.RenderEffect internalRenderEffect;

    public /* synthetic */ RenderEffect(kotlin.jvm.internal.k kVar) {
        this();
    }

    @RequiresApi
    @NotNull
    protected abstract android.graphics.RenderEffect b();

    private RenderEffect() {
    }

    @RequiresApi
    @NotNull
    public final android.graphics.RenderEffect a() {
        android.graphics.RenderEffect renderEffect = this.internalRenderEffect;
        if (renderEffect != null) {
            return renderEffect;
        }
        android.graphics.RenderEffect renderEffectB = b();
        this.internalRenderEffect = renderEffectB;
        return renderEffectB;
    }
}
