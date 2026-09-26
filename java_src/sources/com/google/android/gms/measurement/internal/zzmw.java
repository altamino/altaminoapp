package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes11.dex */
final class zzmw implements zznf {
    final /* synthetic */ zzmp zza;

    zzmw(zzmp zzmpVar) {
        this.zza = zzmpVar;
    }

    @Override // com.google.android.gms.measurement.internal.zznf
    public final void zza(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            if (this.zza.zzm != null) {
                this.zza.zzm.zzj().zzg().zza("AppId not known when logging event", str2);
                return;
            }
            return;
        }
        this.zza.zzl().zzb(new zzmv(this, str, str2, bundle));
    }
}
