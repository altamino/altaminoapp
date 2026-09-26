package androidx.compose.material;

import androidx.compose.runtime.Immutable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class FabPlacement {
    private final int height;
    private final boolean isDocked;
    private final int left;
    private final int width;

    public final int a() {
        return this.height;
    }

    public final int b() {
        return this.left;
    }

    public final int c() {
        return this.width;
    }

    public final boolean d() {
        return this.isDocked;
    }

    public FabPlacement(boolean z6, int i10, int i11, int i12) {
        this.isDocked = z6;
        this.left = i10;
        this.width = i11;
        this.height = i12;
    }
}
