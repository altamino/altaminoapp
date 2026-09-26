package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class ViewLayerVerificationHelper31 {

    @NotNull
    public static final ViewLayerVerificationHelper31 INSTANCE = new ViewLayerVerificationHelper31();

    @DoNotInline
    public final void a(@NotNull View view, @Nullable RenderEffect renderEffect) {
        kotlin.jvm.internal.t.j(view, "view");
        view.setRenderEffect(renderEffect != null ? renderEffect.a() : null);
    }

    private ViewLayerVerificationHelper31() {
    }
}
