package com.cdv.io;

import android.os.SystemClock;
import android.util.Log;

/* loaded from: classes.dex */
public class NvSyncEvent {
    private boolean m_manualReset;
    private volatile boolean m_signaled = false;

    public NvSyncEvent(boolean z) {
        this.m_manualReset = false;
        this.m_manualReset = z;
    }

    public void setEvent() {
        synchronized (this) {
            if (!this.m_signaled) {
                this.m_signaled = true;
                notifyAll();
            }
        }
    }

    public void resetEvent() {
        synchronized (this) {
            this.m_signaled = false;
        }
    }

    public boolean waitEvent(long j) {
        boolean z;
        if (j == 0) {
            synchronized (this) {
                z = this.m_signaled;
            }
            return z;
        }
        if (j > 0) {
            return waitEventWithTimeout(j);
        }
        try {
            synchronized (this) {
                while (!this.m_signaled) {
                    wait();
                }
                if (!this.m_manualReset) {
                    this.m_signaled = false;
                }
            }
            return true;
        } catch (Exception e) {
            Log.e("SyncEvent", "" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    private boolean waitEventWithTimeout(long j) {
        try {
            synchronized (this) {
                if (this.m_signaled) {
                    if (!this.m_manualReset) {
                        this.m_signaled = false;
                    }
                    return true;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                while (!this.m_signaled) {
                    wait(j);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j2 = jElapsedRealtime2 - jElapsedRealtime;
                    if (j2 >= j) {
                        return false;
                    }
                    j -= j2;
                    jElapsedRealtime = jElapsedRealtime2;
                }
                if (!this.m_manualReset) {
                    this.m_signaled = false;
                }
                return true;
            }
        } catch (Exception e) {
            Log.e("SyncEvent", "" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
