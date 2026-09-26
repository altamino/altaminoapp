package androidx.compose.runtime;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class KeyInfo {
    private final int index;
    private final int key;
    private final int location;
    private final int nodes;

    @Nullable
    private final Object objectKey;

    public final int a() {
        return this.key;
    }

    public final int b() {
        return this.location;
    }

    public final int c() {
        return this.nodes;
    }

    @Nullable
    public final Object d() {
        return this.objectKey;
    }

    public KeyInfo(int i10, @Nullable Object obj, int i11, int i12, int i13) {
        this.key = i10;
        this.objectKey = obj;
        this.location = i11;
        this.nodes = i12;
        this.index = i13;
    }
}
