package androidx.compose.ui.platform;

import android.graphics.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class RenderNodeApi29VerificationHelper {

    @NotNull
    public static final RenderNodeApi29VerificationHelper INSTANCE = new RenderNodeApi29VerificationHelper();

    @DoNotInline
    public final void a(@NotNull RenderNode renderNode, @Nullable RenderEffect renderEffect) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        renderNode.setRenderEffect(renderEffect != null ? renderEffect.a() : null);
    }

    private RenderNodeApi29VerificationHelper() {
    }
}
