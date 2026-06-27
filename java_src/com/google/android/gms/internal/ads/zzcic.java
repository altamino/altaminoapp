package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
final class zzcic implements zzbtk {
    private final zzavg zzbsq;
    private final Context zzlj;

    zzcic(Context context, zzavg zzavgVar) {
        this.zzlj = context;
        this.zzbsq = zzavgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(zzcxu zzcxuVar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (TextUtils.isEmpty(zzcxuVar.zzgky.zzgku.zzdoj)) {
            return;
        }
        this.zzbsq.zzi(this.zzlj, zzcxuVar.zzgky.zzgku.zzdoj);
    }
}
