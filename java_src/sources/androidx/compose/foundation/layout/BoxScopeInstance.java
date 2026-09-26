package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class BoxScopeInstance implements BoxScope {

    @NotNull
    public static final BoxScopeInstance INSTANCE = new BoxScopeInstance();

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier a(@NotNull Modifier modifier, @NotNull Alignment alignment) {
        t.j(modifier, "<this>");
        t.j(alignment, "alignment");
        return modifier.B(new BoxChildData(alignment, false, InspectableValueKt.c() ? new BoxScopeInstance$align$$inlined$debugInspectorInfo$1(alignment) : InspectableValueKt.a()));
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier c(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return modifier.B(new BoxChildData(Alignment.Companion.e(), true, InspectableValueKt.c() ? new BoxScopeInstance$matchParentSize$$inlined$debugInspectorInfo$1() : InspectableValueKt.a()));
    }

    private BoxScopeInstance() {
    }
}
