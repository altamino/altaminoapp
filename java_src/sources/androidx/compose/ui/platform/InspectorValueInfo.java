package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public abstract class InspectorValueInfo implements InspectableValue {
    public static final int $stable = 8;

    @Nullable
    private InspectorInfo _values;

    @NotNull
    private final e8.l<InspectorInfo, w7.l0> info;

    /* JADX WARN: Multi-variable type inference failed */
    public InspectorValueInfo(@NotNull e8.l<? super InspectorInfo, w7.l0> info) {
        kotlin.jvm.internal.t.j(info, "info");
        this.info = info;
    }
}
