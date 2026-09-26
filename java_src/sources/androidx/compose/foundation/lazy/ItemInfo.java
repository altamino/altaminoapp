package androidx.compose.foundation.lazy;

import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class ItemInfo {
    private int index;
    private long notAnimatableDelta = IntOffset.Companion.a();

    @NotNull
    private final List<PlaceableInfo> placeables = new ArrayList();

    public final long a() {
        return this.notAnimatableDelta;
    }

    @NotNull
    public final List<PlaceableInfo> b() {
        return this.placeables;
    }

    public final void c(int i10) {
        this.index = i10;
    }

    public final void d(long j6) {
        this.notAnimatableDelta = j6;
    }

    public ItemInfo(int i10) {
        this.index = i10;
    }
}
