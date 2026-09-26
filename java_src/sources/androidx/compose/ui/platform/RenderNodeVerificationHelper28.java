package androidx.compose.ui.platform;

import android.view.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class RenderNodeVerificationHelper28 {

    @NotNull
    public static final RenderNodeVerificationHelper28 INSTANCE = new RenderNodeVerificationHelper28();

    @DoNotInline
    public final int a(@NotNull RenderNode renderNode) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        return renderNode.getAmbientShadowColor();
    }

    @DoNotInline
    public final int b(@NotNull RenderNode renderNode) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        return renderNode.getSpotShadowColor();
    }

    @DoNotInline
    public final void c(@NotNull RenderNode renderNode, int i10) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        renderNode.setAmbientShadowColor(i10);
    }

    @DoNotInline
    public final void d(@NotNull RenderNode renderNode, int i10) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        renderNode.setSpotShadowColor(i10);
    }

    private RenderNodeVerificationHelper28() {
    }
}
