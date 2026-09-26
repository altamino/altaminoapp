package y0;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class i implements d, c {
    private volatile c full;

    @GuardedBy
    private d.a fullState;

    @GuardedBy
    private boolean isRunningDuringBegin;

    @Nullable
    private final d parent;
    private final Object requestLock;
    private volatile c thumb;

    @GuardedBy
    private d.a thumbState;

    public void n(c cVar, c cVar2) {
        this.full = cVar;
        this.thumb = cVar2;
    }

    @GuardedBy
    private boolean k() {
        d dVar = this.parent;
        return dVar == null || dVar.d(this);
    }

    @GuardedBy
    private boolean l() {
        d dVar = this.parent;
        return dVar == null || dVar.i(this);
    }

    @GuardedBy
    private boolean m() {
        d dVar = this.parent;
        return dVar == null || dVar.c(this);
    }

    @Override // y0.d, y0.c
    public boolean a() {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = this.thumb.a() || this.full.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.d
    public void b(c cVar) {
        synchronized (this.requestLock) {
            try {
                if (!cVar.equals(this.full)) {
                    this.thumbState = d.a.FAILED;
                    return;
                }
                this.fullState = d.a.FAILED;
                d dVar = this.parent;
                if (dVar != null) {
                    dVar.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.d
    public boolean c(c cVar) {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = m() && (cVar.equals(this.full) || this.fullState != d.a.SUCCESS);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public void clear() {
        synchronized (this.requestLock) {
            this.isRunningDuringBegin = false;
            d.a aVar = d.a.CLEARED;
            this.fullState = aVar;
            this.thumbState = aVar;
            this.thumb.clear();
            this.full.clear();
        }
    }

    @Override // y0.d
    public boolean d(c cVar) {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = k() && cVar.equals(this.full) && this.fullState != d.a.PAUSED;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public boolean e() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.fullState == d.a.CLEARED;
        }
        return z6;
    }

    @Override // y0.c
    public boolean f() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.fullState == d.a.SUCCESS;
        }
        return z6;
    }

    @Override // y0.d
    public void g(c cVar) {
        synchronized (this.requestLock) {
            try {
                if (cVar.equals(this.thumb)) {
                    this.thumbState = d.a.SUCCESS;
                    return;
                }
                this.fullState = d.a.SUCCESS;
                d dVar = this.parent;
                if (dVar != null) {
                    dVar.g(this);
                }
                if (!this.thumbState.a()) {
                    this.thumb.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.d
    public d getRoot() {
        d root;
        synchronized (this.requestLock) {
            try {
                d dVar = this.parent;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // y0.c
    public boolean h(c cVar) {
        if (!(cVar instanceof i)) {
            return false;
        }
        i iVar = (i) cVar;
        if (this.full == null) {
            if (iVar.full != null) {
                return false;
            }
        } else if (!this.full.h(iVar.full)) {
            return false;
        }
        if (this.thumb == null) {
            if (iVar.thumb != null) {
                return false;
            }
        } else if (!this.thumb.h(iVar.thumb)) {
            return false;
        }
        return true;
    }

    @Override // y0.d
    public boolean i(c cVar) {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = l() && cVar.equals(this.full) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public boolean isRunning() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.fullState == d.a.RUNNING;
        }
        return z6;
    }

    @Override // y0.c
    public void j() {
        synchronized (this.requestLock) {
            try {
                this.isRunningDuringBegin = true;
                try {
                    if (this.fullState != d.a.SUCCESS) {
                        d.a aVar = this.thumbState;
                        d.a aVar2 = d.a.RUNNING;
                        if (aVar != aVar2) {
                            this.thumbState = aVar2;
                            this.thumb.j();
                        }
                    }
                    if (this.isRunningDuringBegin) {
                        d.a aVar3 = this.fullState;
                        d.a aVar4 = d.a.RUNNING;
                        if (aVar3 != aVar4) {
                            this.fullState = aVar4;
                            this.full.j();
                        }
                    }
                    this.isRunningDuringBegin = false;
                } catch (Throwable th) {
                    this.isRunningDuringBegin = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // y0.c
    public void pause() {
        synchronized (this.requestLock) {
            try {
                if (!this.thumbState.a()) {
                    this.thumbState = d.a.PAUSED;
                    this.thumb.pause();
                }
                if (!this.fullState.a()) {
                    this.fullState = d.a.PAUSED;
                    this.full.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public i(Object obj, @Nullable d dVar) {
        d.a aVar = d.a.CLEARED;
        this.fullState = aVar;
        this.thumbState = aVar;
        this.requestLock = obj;
        this.parent = dVar;
    }
}
