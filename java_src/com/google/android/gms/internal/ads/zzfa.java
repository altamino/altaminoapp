package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfa extends zzfk {
    private List<Long> zzzq;

    public zzfa(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 31);
        this.zzzq = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzax(-1L);
        this.zzzm.zzay(-1L);
        if (this.zzzq == null) {
            this.zzzq = (List) this.zzzw.invoke(null, this.zzvd.getContext());
        }
        List<Long> list = this.zzzq;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.zzzm) {
            this.zzzm.zzax(this.zzzq.get(0).longValue());
            this.zzzm.zzay(this.zzzq.get(1).longValue());
        }
    }
}
