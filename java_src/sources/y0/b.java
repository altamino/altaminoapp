package y0;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class b implements d, c {
    private volatile c error;

    @GuardedBy
    private d.a errorState;

    @Nullable
    private final d parent;
    private volatile c primary;

    @GuardedBy
    private d.a primaryState;
    private final Object requestLock;

    public void o(c cVar, c cVar2) {
        this.primary = cVar;
        this.error = cVar2;
    }

    @GuardedBy
    private boolean k(c cVar) {
        return cVar.equals(this.primary) || (this.primaryState == d.a.FAILED && cVar.equals(this.error));
    }

    @GuardedBy
    private boolean l() {
        d dVar = this.parent;
        return dVar == null || dVar.d(this);
    }

    @GuardedBy
    private boolean m() {
        d dVar = this.parent;
        return dVar == null || dVar.i(this);
    }

    @GuardedBy
    private boolean n() {
        d dVar = this.parent;
        return dVar == null || dVar.c(this);
    }

    @Override // y0.d, y0.c
    public boolean a() {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = this.primary.a() || this.error.a();
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
                if (cVar.equals(this.error)) {
                    this.errorState = d.a.FAILED;
                    d dVar = this.parent;
                    if (dVar != null) {
                        dVar.b(this);
                    }
                    return;
                }
                this.primaryState = d.a.FAILED;
                d.a aVar = this.errorState;
                d.a aVar2 = d.a.RUNNING;
                if (aVar != aVar2) {
                    this.errorState = aVar2;
                    this.error.j();
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
                z6 = n() && k(cVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public void clear() {
        synchronized (this.requestLock) {
            try {
                d.a aVar = d.a.CLEARED;
                this.primaryState = aVar;
                this.primary.clear();
                if (this.errorState != aVar) {
                    this.errorState = aVar;
                    this.error.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.d
    public boolean d(c cVar) {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = l() && k(cVar);
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
            try {
                d.a aVar = this.primaryState;
                d.a aVar2 = d.a.CLEARED;
                z6 = aVar == aVar2 && this.errorState == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public boolean f() {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                d.a aVar = this.primaryState;
                d.a aVar2 = d.a.SUCCESS;
                z6 = aVar == aVar2 || this.errorState == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.d
    public void g(c cVar) {
        synchronized (this.requestLock) {
            try {
                if (cVar.equals(this.primary)) {
                    this.primaryState = d.a.SUCCESS;
                } else if (cVar.equals(this.error)) {
                    this.errorState = d.a.SUCCESS;
                }
                d dVar = this.parent;
                if (dVar != null) {
                    dVar.g(this);
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
        if (!(cVar instanceof b)) {
            return false;
        }
        b bVar = (b) cVar;
        return this.primary.h(bVar.primary) && this.error.h(bVar.error);
    }

    @Override // y0.d
    public boolean i(c cVar) {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                z6 = m() && k(cVar);
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
            try {
                d.a aVar = this.primaryState;
                d.a aVar2 = d.a.RUNNING;
                z6 = aVar == aVar2 || this.errorState == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public void j() {
        synchronized (this.requestLock) {
            try {
                d.a aVar = this.primaryState;
                d.a aVar2 = d.a.RUNNING;
                if (aVar != aVar2) {
                    this.primaryState = aVar2;
                    this.primary.j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.c
    public void pause() {
        synchronized (this.requestLock) {
            try {
                d.a aVar = this.primaryState;
                d.a aVar2 = d.a.RUNNING;
                if (aVar == aVar2) {
                    this.primaryState = d.a.PAUSED;
                    this.primary.pause();
                }
                if (this.errorState == aVar2) {
                    this.errorState = d.a.PAUSED;
                    this.error.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public b(Object obj, @Nullable d dVar) {
        d.a aVar = d.a.CLEARED;
        this.primaryState = aVar;
        this.errorState = aVar;
        this.requestLock = obj;
        this.parent = dVar;
    }
}
