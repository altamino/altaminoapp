package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcvb<T> {
    private final Executor zzffi;
    private final Set<zzcva<? extends zzcuz<T>>> zzgih;

    public zzcvb(Executor executor, Set<zzcva<? extends zzcuz<T>>> set) {
        this.zzffi = executor;
        this.zzgih = set;
    }

    public final zzbbh<T> zzu(final T t) {
        final ArrayList arrayList = new ArrayList(this.zzgih.size());
        for (final zzcva<? extends zzcuz<T>> zzcvaVar : this.zzgih) {
            zzbbh<S> zzbbhVarZzalm = zzcvaVar.zzalm();
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqg)).booleanValue()) {
                final long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
                zzbbhVarZzalm.zza(new Runnable(zzcvaVar, jElapsedRealtime) { // from class: com.google.android.gms.internal.ads.zzcvc
                    private final zzcva zzgii;
                    private final long zzgij;

                    {
                        this.zzgii = zzcvaVar;
                        this.zzgij = jElapsedRealtime;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcva zzcvaVar2 = this.zzgii;
                        long j = this.zzgij;
                        String canonicalName = zzcvaVar2.getClass().getCanonicalName();
                        long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - j;
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(jElapsedRealtime2);
                        zzawz.zzds(sb.toString());
                    }
                }, zzbbm.zzeaf);
            }
            arrayList.add(zzbbhVarZzalm);
        }
        return zzbar.zzf(arrayList).zza(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.zzcvd
            private final Object zzdeb;
            private final List zzghy;

            {
                this.zzghy = arrayList;
                this.zzdeb = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcvb.zza(this.zzghy, this.zzdeb);
            }
        }, this.zzffi);
    }

    static final /* synthetic */ Object zza(List list, Object obj) throws Exception {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                zzcuz zzcuzVar = (zzcuz) ((zzbbh) it.next()).get();
                if (zzcuzVar != null) {
                    zzcuzVar.zzt(obj);
                }
            } catch (InterruptedException | ExecutionException e) {
                zzbad.zzc("Derive quality signals error.", e);
                throw new Exception(e);
            }
        }
        return obj;
    }
}
