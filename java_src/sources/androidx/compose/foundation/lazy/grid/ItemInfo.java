package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class ItemInfo {
    private int crossAxisOffset;
    private int crossAxisSize;
    private int index;
    private long notAnimatableDelta = IntOffset.Companion.a();

    @NotNull
    private final List<PlaceableInfo> placeables = new ArrayList();

    public final int a() {
        return this.crossAxisOffset;
    }

    public final int b() {
        return this.crossAxisSize;
    }

    public final long c() {
        return this.notAnimatableDelta;
    }

    @NotNull
    public final List<PlaceableInfo> d() {
        return this.placeables;
    }

    public final void e(int i10) {
        this.crossAxisOffset = i10;
    }

    public final void f(int i10) {
        this.crossAxisSize = i10;
    }

    public final void g(int i10) {
        this.index = i10;
    }

    public final void h(long j6) {
        this.notAnimatableDelta = j6;
    }

    public ItemInfo(int i10, int i11, int i12) {
        this.index = i10;
        this.crossAxisSize = i11;
        this.crossAxisOffset = i12;
    }
}
