package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class zzbts<ListenerT> {
    private final Map<ListenerT, Executor> zzfkm = new HashMap();

    protected zzbts(Set<zzbuz<ListenerT>> set) {
        zzb(set);
    }

    public final synchronized void zza(zzbuz<ListenerT> zzbuzVar) {
        zza(zzbuzVar.zzflc, zzbuzVar.zzffi);
    }

    public final synchronized void zza(ListenerT listenert, Executor executor) {
        this.zzfkm.put(listenert, executor);
    }

    private final synchronized void zzb(Set<zzbuz<ListenerT>> set) {
        Iterator<zzbuz<ListenerT>> it = set.iterator();
        while (it.hasNext()) {
            zza(it.next());
        }
    }

    protected final synchronized void zza(final zzbtu<ListenerT> zzbtuVar) {
        for (Map.Entry<ListenerT, Executor> entry : this.zzfkm.entrySet()) {
            final ListenerT key = entry.getKey();
            entry.getValue().execute(new Runnable(zzbtuVar, key) { // from class: com.google.android.gms.internal.ads.zzbtt
                private final Object zzdeb;
                private final zzbtu zzfkn;

                {
                    this.zzfkn = zzbtuVar;
                    this.zzdeb = key;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.zzfkn.zzr(this.zzdeb);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzk.zzlk().zzb(th, "EventEmitter.notify");
                        zzawz.zza("Event emitter exception.", th);
                    }
                }
            });
        }
    }
}
