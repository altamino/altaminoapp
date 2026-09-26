package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class RowScopeInstance implements RowScope {

    @NotNull
    public static final RowScopeInstance INSTANCE = new RowScopeInstance();

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier a(@NotNull Modifier modifier, float f, boolean z6) {
        t.j(modifier, "<this>");
        if (f > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            return modifier.B(new LayoutWeightImpl(f, z6, InspectableValueKt.c() ? new RowScopeInstance$weight$$inlined$debugInspectorInfo$1(f, z6) : InspectableValueKt.a()));
        }
        throw new IllegalArgumentException(("invalid weight " + f + "; must be greater than zero").toString());
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier b(@NotNull Modifier modifier, @NotNull Alignment.Vertical alignment) {
        t.j(modifier, "<this>");
        t.j(alignment, "alignment");
        return modifier.B(new VerticalAlignModifier(alignment, InspectableValueKt.c() ? new RowScopeInstance$align$$inlined$debugInspectorInfo$1(alignment) : InspectableValueKt.a()));
    }

    private RowScopeInstance() {
    }
}
