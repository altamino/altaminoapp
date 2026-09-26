package androidx.compose.ui;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ZIndexModifierKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return modifier.B(new ZIndexModifier(f, InspectableValueKt.c() ? new ZIndexModifierKt$zIndex$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a()));
    }
}
