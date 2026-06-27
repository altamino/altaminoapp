package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzex extends zzfk {
    private static final Object zzzl = new Object();
    private static volatile String zzzp;

    public zzex(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzx("E");
        if (zzzp == null) {
            synchronized (zzzl) {
                if (zzzp == null) {
                    zzzp = (String) this.zzzw.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzzm) {
            this.zzzm.zzx(zzzp);
        }
    }
}
