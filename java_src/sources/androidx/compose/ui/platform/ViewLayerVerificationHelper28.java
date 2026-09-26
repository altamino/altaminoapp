package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class ViewLayerVerificationHelper28 {

    @NotNull
    public static final ViewLayerVerificationHelper28 INSTANCE = new ViewLayerVerificationHelper28();

    @DoNotInline
    public final void a(@NotNull View view, int i10) {
        kotlin.jvm.internal.t.j(view, "view");
        view.setOutlineAmbientShadowColor(i10);
    }

    @DoNotInline
    public final void b(@NotNull View view, int i10) {
        kotlin.jvm.internal.t.j(view, "view");
        view.setOutlineSpotShadowColor(i10);
    }

    private ViewLayerVerificationHelper28() {
    }
}
