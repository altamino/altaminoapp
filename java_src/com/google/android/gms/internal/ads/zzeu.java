package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzeu extends zzfk {
    private static final Object zzzl = new Object();
    private static volatile Long zzzn;

    public zzeu(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (zzzn == null) {
            synchronized (zzzl) {
                if (zzzn == null) {
                    zzzn = (Long) this.zzzw.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzzm) {
            this.zzzm.zzav(zzzn.longValue());
        }
    }
}
