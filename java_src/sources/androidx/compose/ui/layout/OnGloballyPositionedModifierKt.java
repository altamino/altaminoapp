package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class OnGloballyPositionedModifierKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull l<? super LayoutCoordinates, l0> onGloballyPositioned) {
        t.j(modifier, "<this>");
        t.j(onGloballyPositioned, "onGloballyPositioned");
        return modifier.B(new OnGloballyPositionedModifierImpl(onGloballyPositioned, InspectableValueKt.c() ? new OnGloballyPositionedModifierKt$onGloballyPositioned$$inlined$debugInspectorInfo$1(onGloballyPositioned) : InspectableValueKt.a()));
    }
}
