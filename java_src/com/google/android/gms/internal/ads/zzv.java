package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzv {
    private final zzm zzaa;
    private final AtomicInteger zzba;
    private final Set<zzr<?>> zzbb;
    private final PriorityBlockingQueue<zzr<?>> zzbc;
    private final PriorityBlockingQueue<zzr<?>> zzbd;
    private final zzn[] zzbe;
    private final List<zzx> zzbf;
    private final List<zzw> zzbg;
    private final zzb zzj;
    private final zzab zzk;
    private zzd zzq;

    private zzv(zzb zzbVar, zzm zzmVar, int i, zzab zzabVar) {
        this.zzba = new AtomicInteger();
        this.zzbb = new HashSet();
        this.zzbc = new PriorityBlockingQueue<>();
        this.zzbd = new PriorityBlockingQueue<>();
        this.zzbf = new ArrayList();
        this.zzbg = new ArrayList();
        this.zzj = zzbVar;
        this.zzaa = zzmVar;
        this.zzbe = new zzn[4];
        this.zzk = zzabVar;
    }

    private zzv(zzb zzbVar, zzm zzmVar, int i) {
        this(zzbVar, zzmVar, 4, new zzi(new Handler(Looper.getMainLooper())));
    }

    public zzv(zzb zzbVar, zzm zzmVar) {
        this(zzbVar, zzmVar, 4);
    }

    public final void start() {
        zzd zzdVar = this.zzq;
        if (zzdVar != null) {
            zzdVar.quit();
        }
        for (zzn zznVar : this.zzbe) {
            if (zznVar != null) {
                zznVar.quit();
            }
        }
        this.zzq = new zzd(this.zzbc, this.zzbd, this.zzj, this.zzk);
        this.zzq.start();
        for (int i = 0; i < this.zzbe.length; i++) {
            zzn zznVar2 = new zzn(this.zzbd, this.zzaa, this.zzj, this.zzk);
            this.zzbe[i] = zznVar2;
            zznVar2.start();
        }
    }

    public final <T> zzr<T> zze(zzr<T> zzrVar) {
        zzrVar.zza(this);
        synchronized (this.zzbb) {
            this.zzbb.add(zzrVar);
        }
        zzrVar.zzb(this.zzba.incrementAndGet());
        zzrVar.zzb("add-to-queue");
        zza(zzrVar, 0);
        if (!zzrVar.zzh()) {
            this.zzbd.add(zzrVar);
            return zzrVar;
        }
        this.zzbc.add(zzrVar);
        return zzrVar;
    }

    final <T> void zzf(zzr<T> zzrVar) {
        synchronized (this.zzbb) {
            this.zzbb.remove(zzrVar);
        }
        synchronized (this.zzbf) {
            Iterator<zzx> it = this.zzbf.iterator();
            while (it.hasNext()) {
                it.next().zzg(zzrVar);
            }
        }
        zza(zzrVar, 5);
    }

    final void zza(zzr<?> zzrVar, int i) {
        synchronized (this.zzbg) {
            Iterator<zzw> it = this.zzbg.iterator();
            while (it.hasNext()) {
                it.next().zzb(zzrVar, i);
            }
        }
    }
}
