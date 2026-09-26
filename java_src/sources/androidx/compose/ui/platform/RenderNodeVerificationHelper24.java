package androidx.compose.ui.platform;

import android.view.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class RenderNodeVerificationHelper24 {

    @NotNull
    public static final RenderNodeVerificationHelper24 INSTANCE = new RenderNodeVerificationHelper24();

    @DoNotInline
    public final void a(@NotNull RenderNode renderNode) {
        kotlin.jvm.internal.t.j(renderNode, "renderNode");
        renderNode.discardDisplayList();
    }

    private RenderNodeVerificationHelper24() {
    }
}
