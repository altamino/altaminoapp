package androidx.compose.runtime;

/* JADX INFO: loaded from: classes6.dex */
final class GroupInfo {
    private int nodeCount;
    private int nodeIndex;
    private int slotIndex;

    public final int a() {
        return this.nodeCount;
    }

    public final int b() {
        return this.nodeIndex;
    }

    public final int c() {
        return this.slotIndex;
    }

    public final void d(int i10) {
        this.nodeCount = i10;
    }

    public final void e(int i10) {
        this.nodeIndex = i10;
    }

    public final void f(int i10) {
        this.slotIndex = i10;
    }

    public GroupInfo(int i10, int i11, int i12) {
        this.slotIndex = i10;
        this.nodeIndex = i11;
        this.nodeCount = i12;
    }
}
