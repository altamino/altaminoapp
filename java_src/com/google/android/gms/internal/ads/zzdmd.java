package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
final class zzdmd {
    private final ConcurrentHashMap<zzdme, List<Throwable>> zzhby = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzhbz = new ReferenceQueue<>();

    zzdmd() {
    }

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.zzhbz.poll();
        while (referencePoll != null) {
            this.zzhby.remove(referencePoll);
            referencePoll = this.zzhbz.poll();
        }
        List<Throwable> list = this.zzhby.get(new zzdme(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.zzhby.putIfAbsent(new zzdme(th, this.zzhbz), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
