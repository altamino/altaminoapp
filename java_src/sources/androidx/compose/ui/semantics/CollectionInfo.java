package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class CollectionInfo {
    public static final int $stable = 0;
    private final int columnCount;
    private final int rowCount;

    public final int a() {
        return this.columnCount;
    }

    public final int b() {
        return this.rowCount;
    }

    public CollectionInfo(int i10, int i11) {
        this.rowCount = i10;
        this.columnCount = i11;
    }
}
