package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzek extends zzfk {
    private final Activity zzzd;
    private final View zzze;

    public zzek(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, View view, Activity activity) {
        super(zzdyVar, str, str2, c0007zza, i, 62);
        this.zzze = view;
        this.zzzd = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (this.zzze == null) {
            return;
        }
        boolean zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcrf)).booleanValue();
        Object[] objArr = (Object[]) this.zzzw.invoke(null, this.zzze, this.zzzd, Boolean.valueOf(zBooleanValue));
        synchronized (this.zzzm) {
            this.zzzm.zzbp(((Long) objArr[0]).longValue());
            this.zzzm.zzbq(((Long) objArr[1]).longValue());
            if (zBooleanValue) {
                this.zzzm.zzae((String) objArr[2]);
            }
        }
    }
}
