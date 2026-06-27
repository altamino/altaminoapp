package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
final class zzbx extends Thread {
    private final /* synthetic */ zzbt zzni;
    private final Object zznl;
    private final BlockingQueue<zzbw<?>> zznm;

    public zzbx(zzbt zzbtVar, String str, BlockingQueue<zzbw<?>> blockingQueue) {
        this.zzni = zzbtVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zznl = new Object();
        this.zznm = blockingQueue;
        setName(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws IllegalStateException, InterruptedException {
        boolean z = false;
        while (!z) {
            try {
                this.zzni.zzne.acquire();
                z = true;
            } catch (InterruptedException e) {
                zza(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzbw<?> zzbwVarPoll = this.zznm.poll();
                if (zzbwVarPoll != null) {
                    Process.setThreadPriority(zzbwVarPoll.zznk ? threadPriority : 10);
                    zzbwVarPoll.run();
                } else {
                    synchronized (this.zznl) {
                        if (this.zznm.peek() == null && !this.zzni.zznf) {
                            try {
                                this.zznl.wait(30000L);
                            } catch (InterruptedException e2) {
                                zza(e2);
                            }
                        }
                    }
                    synchronized (this.zzni.zznd) {
                        if (this.zznm.peek() == null) {
                            break;
                        }
                    }
                }
            }
            synchronized (this.zzni.zznd) {
                this.zzni.zzne.release();
                this.zzni.zznd.notifyAll();
                if (this == this.zzni.zzmx) {
                    zzbt.zza(this.zzni, null);
                } else if (this == this.zzni.zzmy) {
                    zzbt.zzb(this.zzni, null);
                } else {
                    this.zzni.zzad().zzda().zzaq("Current scheduler thread is neither worker nor network");
                }
            }
        } catch (Throwable th) {
            synchronized (this.zzni.zznd) {
                this.zzni.zzne.release();
                this.zzni.zznd.notifyAll();
                if (this == this.zzni.zzmx) {
                    zzbt.zza(this.zzni, null);
                } else if (this == this.zzni.zzmy) {
                    zzbt.zzb(this.zzni, null);
                } else {
                    this.zzni.zzad().zzda().zzaq("Current scheduler thread is neither worker nor network");
                }
                throw th;
            }
        }
    }

    public final void zzeh() {
        synchronized (this.zznl) {
            this.zznl.notifyAll();
        }
    }

    private final void zza(InterruptedException interruptedException) throws IllegalStateException {
        this.zzni.zzad().zzdd().zza(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }
}
