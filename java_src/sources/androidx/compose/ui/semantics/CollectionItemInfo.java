package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class CollectionItemInfo {
    public static final int $stable = 0;
    private final int columnIndex;
    private final int columnSpan;
    private final int rowIndex;
    private final int rowSpan;

    public final int a() {
        return this.columnIndex;
    }

    public final int b() {
        return this.columnSpan;
    }

    public final int c() {
        return this.rowIndex;
    }

    public final int d() {
        return this.rowSpan;
    }

    public CollectionItemInfo(int i10, int i11, int i12, int i13) {
        this.rowIndex = i10;
        this.rowSpan = i11;
        this.columnIndex = i12;
        this.columnSpan = i13;
    }
}
