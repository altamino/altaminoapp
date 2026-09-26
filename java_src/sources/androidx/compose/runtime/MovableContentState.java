package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
@InternalComposeApi
public final class MovableContentState {
    public static final int $stable = 8;

    @NotNull
    private final SlotTable slotTable;

    @NotNull
    public final SlotTable a() {
        return this.slotTable;
    }

    public MovableContentState(@NotNull SlotTable slotTable) {
        t.j(slotTable, "slotTable");
        this.slotTable = slotTable;
    }
}
