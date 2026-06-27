package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzff extends zzfk {
    private static final Object zzzl = new Object();
    private static volatile Long zzzt;

    public zzff(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (zzzt == null) {
            synchronized (zzzl) {
                if (zzzt == null) {
                    zzzt = (Long) this.zzzw.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzzm) {
            this.zzzm.zzaz(zzzt.longValue());
        }
    }
}
