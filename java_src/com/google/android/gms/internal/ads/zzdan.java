package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.ads.zzdap;
import com.google.android.gms.internal.ads.zzdau;

@ShowFirstParty
/* loaded from: classes2.dex */
public final class zzdan {
    private final Looper zzgob;
    private final Context zzlj;

    public zzdan(Context context, Looper looper) {
        this.zzlj = context;
        this.zzgob = looper;
    }

    public final void zzgb(String str) {
        new zzdao(this.zzlj, this.zzgob, (zzdau) zzdau.zzank().zzge(this.zzlj.getPackageName()).zzb(zzdau.zzb.BLOCKED_IMPRESSION).zzb(zzdap.zzani().zzgd(str).zzb(zzdap.zza.BLOCKED_REASON_BACKGROUND)).zzaya()).zzanh();
    }
}
