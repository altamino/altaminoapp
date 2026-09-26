package androidx.renderscript;

import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes6.dex */
public class BaseObj {
    private boolean mDestroyed;
    private long mID;
    RenderScript mRS;

    private void helpDestroy() {
        boolean z6;
        synchronized (this) {
            try {
                if (this.mDestroyed) {
                    z6 = false;
                } else {
                    z6 = true;
                    this.mDestroyed = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            ReentrantReadWriteLock.ReadLock lock = this.mRS.mRWLock.readLock();
            lock.lock();
            if (this.mRS.isAlive()) {
                this.mRS.nObjDestroy(this.mID);
            }
            lock.unlock();
            this.mRS = null;
            this.mID = 0L;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mID == ((BaseObj) obj).mID;
    }

    android.renderscript.BaseObj getNObj() {
        return null;
    }

    public int hashCode() {
        long j6 = this.mID;
        return (int) ((j6 >> 32) ^ (268435455 & j6));
    }

    void checkValid() {
        if (this.mID == 0 && getNObj() == null) {
            throw new RSIllegalArgumentException("Invalid object.");
        }
    }

    public void destroy() {
        if (this.mDestroyed) {
            throw new RSInvalidStateException("Object already destroyed.");
        }
        helpDestroy();
    }

    long getID(RenderScript renderScript) {
        this.mRS.validate();
        if (this.mDestroyed) {
            throw new RSInvalidStateException("using a destroyed object.");
        }
        long j6 = this.mID;
        if (j6 == 0) {
            throw new RSRuntimeException("Internal error: Object id 0.");
        }
        if (renderScript == null || renderScript == this.mRS) {
            return j6;
        }
        throw new RSInvalidStateException("using object with mismatched context.");
    }

    void setID(long j6) {
        if (this.mID != 0) {
            throw new RSRuntimeException("Internal Error, reset of object ID.");
        }
        this.mID = j6;
    }

    BaseObj(long j6, RenderScript renderScript) {
        renderScript.validate();
        this.mRS = renderScript;
        this.mID = j6;
        this.mDestroyed = false;
    }

    protected void finalize() throws Throwable {
        helpDestroy();
        super.finalize();
    }
}
