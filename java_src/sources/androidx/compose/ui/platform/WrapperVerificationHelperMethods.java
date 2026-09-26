package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class WrapperVerificationHelperMethods {

    @NotNull
    public static final WrapperVerificationHelperMethods INSTANCE = new WrapperVerificationHelperMethods();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final Map<Integer, Integer> a(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
        Map<Integer, Integer> attributeSourceResourceMap = view.getAttributeSourceResourceMap();
        kotlin.jvm.internal.t.i(attributeSourceResourceMap, "view.attributeSourceResourceMap");
        return attributeSourceResourceMap;
    }

    private WrapperVerificationHelperMethods() {
    }
}
