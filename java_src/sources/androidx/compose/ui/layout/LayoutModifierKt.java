package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Constraints;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull q<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measure) {
        t.j(modifier, "<this>");
        t.j(measure, "measure");
        return modifier.B(new LayoutModifierImpl(measure, InspectableValueKt.c() ? new LayoutModifierKt$layout$$inlined$debugInspectorInfo$1(measure) : InspectableValueKt.a()));
    }
}
