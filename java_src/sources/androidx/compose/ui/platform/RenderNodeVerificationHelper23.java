package androidx.compose.ui.platform;

import android.view.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class RenderNodeVerificationHelper23 {

    @NotNull
    public static final RenderNodeVerificationHelper23 INSTANCE = new RenderNodeVerificationHelper23();

    @DoNotInline
    public final void a(@NotNull RenderNode renderNode) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        renderNode.destroyDisplayListData();
    }

    private RenderNodeVerificationHelper23() {
    }
}
