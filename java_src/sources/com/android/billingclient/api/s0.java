package com.android.billingclient.api;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzio;
import com.google.android.gms.internal.play_billing.zziu;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zziz;

/* JADX INFO: loaded from: classes6.dex */
final class s0 implements n0 {
    private final zzio zza;
    private final u0 zzb;

    @Override // com.android.billingclient.api.n0
    public final void a(@Nullable zzhy zzhyVar) {
        if (zzhyVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.zza;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzi(zzhyVar);
            this.zzb.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.n0
    public final void b(@Nullable zziz zzizVar) {
        if (zzizVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.zza;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzl(zzizVar);
            this.zzb.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.n0
    public final void c(@Nullable zzic zzicVar) {
        if (zzicVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.zza;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzj(zzicVar);
            this.zzb.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    s0(Context context, zzio zzioVar) {
        this.zzb = new u0(context);
        this.zza = zzioVar;
    }
}
