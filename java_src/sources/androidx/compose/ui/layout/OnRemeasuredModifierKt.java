package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class OnRemeasuredModifierKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull l<? super IntSize, l0> onSizeChanged) {
        t.j(modifier, "<this>");
        t.j(onSizeChanged, "onSizeChanged");
        return modifier.B(new OnSizeChangedModifier(onSizeChanged, InspectableValueKt.c() ? new OnRemeasuredModifierKt$onSizeChanged$$inlined$debugInspectorInfo$1(onSizeChanged) : InspectableValueKt.a()));
    }
}
