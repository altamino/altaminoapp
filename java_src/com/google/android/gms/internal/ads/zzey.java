package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzey extends zzfk {
    public zzey(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzzm) {
            zzdl zzdlVar = new zzdl((String) this.zzzw.invoke(null, this.zzvd.getContext()));
            synchronized (this.zzzm) {
                this.zzzm.zzal(zzdlVar.zzwu);
                this.zzzm.zzbn(zzdlVar.zzwv);
            }
        }
    }
}
