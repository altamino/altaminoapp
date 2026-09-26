package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class ColumnScopeInstance implements ColumnScope {

    @NotNull
    public static final ColumnScopeInstance INSTANCE = new ColumnScopeInstance();

    @Override // androidx.compose.foundation.layout.ColumnScope
    @Stable
    @NotNull
    public Modifier a(@NotNull Modifier modifier, float f, boolean z6) {
        t.j(modifier, "<this>");
        if (f > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            return modifier.B(new LayoutWeightImpl(f, z6, InspectableValueKt.c() ? new ColumnScopeInstance$weight$$inlined$debugInspectorInfo$1(f, z6) : InspectableValueKt.a()));
        }
        throw new IllegalArgumentException(("invalid weight " + f + "; must be greater than zero").toString());
    }

    @Override // androidx.compose.foundation.layout.ColumnScope
    @Stable
    @NotNull
    public Modifier b(@NotNull Modifier modifier, @NotNull Alignment.Horizontal alignment) {
        t.j(modifier, "<this>");
        t.j(alignment, "alignment");
        return modifier.B(new HorizontalAlignModifier(alignment, InspectableValueKt.c() ? new ColumnScopeInstance$align$$inlined$debugInspectorInfo$1(alignment) : InspectableValueKt.a()));
    }

    private ColumnScopeInstance() {
    }
}
