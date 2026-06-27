package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzel extends zzfk {
    public zzel(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzf(zzbz.ENUM_FAILURE);
        try {
            this.zzzm.zzf(((Boolean) this.zzzw.invoke(null, this.zzvd.getContext())).booleanValue() ? zzbz.ENUM_TRUE : zzbz.ENUM_FALSE);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
