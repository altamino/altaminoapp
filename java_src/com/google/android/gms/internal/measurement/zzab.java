package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzaa;
import java.util.HashMap;

/* loaded from: classes2.dex */
final class zzab extends zzaa.zza {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzap;
    private final /* synthetic */ Bundle zzaq;
    private final /* synthetic */ zzaa zzar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzab(zzaa zzaaVar, String str, String str2, Context context, Bundle bundle) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzao = str;
        this.zzap = str2;
        this.val$context = context;
        this.zzaq = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    public final void zzl() {
        String str;
        String str2;
        String str3;
        int iMax;
        boolean z;
        try {
            this.zzar.zzad = new HashMap();
            zzaa zzaaVar = this.zzar;
            if (zzaa.zza(this.zzao, this.zzap)) {
                String str4 = this.zzap;
                str2 = this.zzao;
                str3 = str4;
                str = this.zzar.zzw;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            zzaa.zze(this.val$context);
            boolean z2 = zzaa.zzag.booleanValue() || str2 != null;
            this.zzar.zzan = this.zzar.zza(this.val$context, z2);
            if (this.zzar.zzan == null) {
                Log.w(this.zzar.zzw, "Failed to connect to measurement client.");
                return;
            }
            int iZzd = zzaa.zzd(this.val$context);
            int iZzc = zzaa.zzc(this.val$context);
            if (z2) {
                iMax = Math.max(iZzd, iZzc);
                z = iZzc < iZzd;
            } else {
                iMax = iZzd > 0 ? iZzd : iZzc;
                if (iZzd > 0) {
                }
            }
            this.zzar.zzan.initialize(ObjectWrapper.wrap(this.val$context), new zzy(15300L, iMax, z, str, str2, str3, this.zzaq), this.timestamp);
        } catch (RemoteException e) {
            this.zzar.zza((Exception) e, true, false);
        }
    }
}
