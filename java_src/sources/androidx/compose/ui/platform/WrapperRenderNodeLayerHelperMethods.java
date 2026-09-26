package androidx.compose.ui.platform;

import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class WrapperRenderNodeLayerHelperMethods {

    @NotNull
    public static final WrapperRenderNodeLayerHelperMethods INSTANCE = new WrapperRenderNodeLayerHelperMethods();

    @DoNotInline
    public final void a(@NotNull AndroidComposeView ownerView) {
        kotlin.jvm.internal.t.j(ownerView, "ownerView");
        ViewParent parent = ownerView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(ownerView, ownerView);
        }
    }

    private WrapperRenderNodeLayerHelperMethods() {
    }
}
