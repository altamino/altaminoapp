package androidx.compose.ui.platform;

import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class AccessibilityNodeInfoVerificationHelperMethods {

    @NotNull
    public static final AccessibilityNodeInfoVerificationHelperMethods INSTANCE = new AccessibilityNodeInfoVerificationHelperMethods();

    @DoNotInline
    @RequiresApi
    public final void a(@NotNull AccessibilityNodeInfo node, @NotNull List<String> data) {
        kotlin.jvm.internal.t.j(node, "node");
        kotlin.jvm.internal.t.j(data, "data");
        node.setAvailableExtraData(data);
    }

    private AccessibilityNodeInfoVerificationHelperMethods() {
    }
}
