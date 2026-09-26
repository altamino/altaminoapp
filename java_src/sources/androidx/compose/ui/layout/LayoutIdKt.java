package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutIdKt {
    @Nullable
    public static final Object a(@NotNull Measurable measurable) {
        t.j(measurable, "<this>");
        Object objE = measurable.e();
        LayoutIdParentData layoutIdParentData = objE instanceof LayoutIdParentData ? (LayoutIdParentData) objE : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.getLayoutId();
        }
        return null;
    }

    @Stable
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull Object layoutId) {
        t.j(modifier, "<this>");
        t.j(layoutId, "layoutId");
        return modifier.B(new LayoutId(layoutId, InspectableValueKt.c() ? new LayoutIdKt$layoutId$$inlined$debugInspectorInfo$1(layoutId) : InspectableValueKt.a()));
    }
}
