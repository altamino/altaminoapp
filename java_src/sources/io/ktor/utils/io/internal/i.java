package io.ktor.utils.io.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class i {
    public static final /* synthetic */ AtomicIntegerFieldUpdater _availableForRead$FU$internal = AtomicIntegerFieldUpdater.newUpdater(i.class, "_availableForRead$internal");
    public static final /* synthetic */ AtomicIntegerFieldUpdater _availableForWrite$FU$internal = AtomicIntegerFieldUpdater.newUpdater(i.class, "_availableForWrite$internal");
    static final /* synthetic */ AtomicIntegerFieldUpdater _pendingToFlush$FU = AtomicIntegerFieldUpdater.newUpdater(i.class, "_pendingToFlush");

    @NotNull
    public volatile /* synthetic */ int _availableForWrite$internal;
    private final int totalCapacity;

    @NotNull
    public volatile /* synthetic */ int _availableForRead$internal = 0;

    @NotNull
    volatile /* synthetic */ int _pendingToFlush = 0;

    public final boolean g() {
        return this._availableForWrite$internal == this.totalCapacity;
    }

    public final boolean h() {
        return this._availableForWrite$internal == 0;
    }

    public final void i() {
        this._availableForRead$internal = this.totalCapacity;
        this._availableForWrite$internal = 0;
        this._pendingToFlush = 0;
    }

    public final void j() {
        this._availableForRead$internal = 0;
        this._pendingToFlush = 0;
        this._availableForWrite$internal = this.totalCapacity;
    }

    private final Void b(int i10, int i11, int i12) {
        throw new IllegalArgumentException("Completed read overflow: " + i10 + " + " + i12 + " = " + i11 + " > " + this.totalCapacity);
    }

    private final Void d(int i10, int i11) {
        throw new IllegalArgumentException("Complete write overflow: " + i10 + " + " + i11 + " > " + this.totalCapacity);
    }

    public final void a(int i10) {
        int i11;
        int i12;
        do {
            i11 = this._availableForWrite$internal;
            i12 = i11 + i10;
            if (i12 > this.totalCapacity) {
                b(i11, i12, i10);
                throw new w7.i();
            }
        } while (!_availableForWrite$FU$internal.compareAndSet(this, i11, i12));
    }

    public final void c(int i10) {
        int i11;
        int i12;
        do {
            i11 = this._pendingToFlush;
            i12 = i11 + i10;
            if (i12 > this.totalCapacity) {
                d(i11, i10);
                throw new w7.i();
            }
        } while (!_pendingToFlush$FU.compareAndSet(this, i11, i12));
    }

    public final boolean e() {
        int andSet = _pendingToFlush$FU.getAndSet(this, 0);
        if (andSet == 0) {
            return this._availableForRead$internal > 0;
        }
        return _availableForRead$FU$internal.addAndGet(this, andSet) > 0;
    }

    public final void f() {
        _availableForWrite$FU$internal.getAndSet(this, 0);
    }

    public final boolean k() {
        int i10;
        do {
            i10 = this._availableForWrite$internal;
            if (this._pendingToFlush > 0 || this._availableForRead$internal > 0 || i10 != this.totalCapacity) {
                return false;
            }
        } while (!_availableForWrite$FU$internal.compareAndSet(this, i10, 0));
        return true;
    }

    public final int l(int i10) {
        int i11;
        int iMin;
        do {
            i11 = this._availableForRead$internal;
            iMin = Math.min(i10, i11);
            if (iMin == 0) {
                return 0;
            }
        } while (!_availableForRead$FU$internal.compareAndSet(this, i11, i11 - iMin));
        return Math.min(i10, i11);
    }

    public final boolean m(int i10) {
        int i11;
        do {
            i11 = this._availableForRead$internal;
            if (i11 < i10) {
                return false;
            }
        } while (!_availableForRead$FU$internal.compareAndSet(this, i11, i11 - i10));
        return true;
    }

    public final int n(int i10) {
        int i11;
        int iMin;
        do {
            i11 = this._availableForWrite$internal;
            iMin = Math.min(i10, i11);
            if (iMin == 0) {
                return 0;
            }
        } while (!_availableForWrite$FU$internal.compareAndSet(this, i11, i11 - iMin));
        return Math.min(i10, i11);
    }

    @NotNull
    public String toString() {
        return "RingBufferCapacity[read: " + this._availableForRead$internal + ", write: " + this._availableForWrite$internal + ", flush: " + this._pendingToFlush + ", capacity: " + this.totalCapacity + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public i(int i10) {
        this.totalCapacity = i10;
        this._availableForWrite$internal = i10;
    }
}
