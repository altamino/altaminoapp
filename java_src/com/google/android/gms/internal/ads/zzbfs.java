package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzbfs implements Iterable<zzbfq> {
    private final List<zzbfq> zzehs = new ArrayList();

    public static boolean zzc(zzbdf zzbdfVar) {
        zzbfq zzbfqVarZzd = zzd(zzbdfVar);
        if (zzbfqVarZzd == null) {
            return false;
        }
        zzbfqVarZzd.zzehq.abort();
        return true;
    }

    static zzbfq zzd(zzbdf zzbdfVar) {
        Iterator<zzbfq> it = com.google.android.gms.ads.internal.zzk.zzmc().iterator();
        while (it.hasNext()) {
            zzbfq next = it.next();
            if (next.zzebt == zzbdfVar) {
                return next;
            }
        }
        return null;
    }

    public final void zza(zzbfq zzbfqVar) {
        this.zzehs.add(zzbfqVar);
    }

    public final void zzb(zzbfq zzbfqVar) {
        this.zzehs.remove(zzbfqVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<zzbfq> iterator() {
        return this.zzehs.iterator();
    }
}
