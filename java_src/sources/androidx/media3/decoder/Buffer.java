package androidx.media3.decoder;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class Buffer {
    private int flags;

    public final void a(int i10) {
        this.flags = i10 | this.flags;
    }

    public void b() {
        this.flags = 0;
    }

    public final void c(int i10) {
        this.flags = (~i10) & this.flags;
    }

    protected final boolean d(int i10) {
        return (this.flags & i10) == i10;
    }

    public final boolean h() {
        return d(4);
    }

    public final boolean j() {
        return d(1);
    }

    public final void l(int i10) {
        this.flags = i10;
    }

    public final boolean e() {
        return d(268435456);
    }

    public final boolean f() {
        return d(Integer.MIN_VALUE);
    }

    public final boolean i() {
        return d(134217728);
    }

    public final boolean k() {
        return d(536870912);
    }
}
