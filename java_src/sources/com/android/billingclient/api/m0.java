package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzii;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class m0 {
    @Nullable
    public static zzhy a(int i10, int i11, h hVar) {
        try {
            zzhx zzhxVarZzv = zzhy.zzv();
            zzie zzieVarZzv = zzii.zzv();
            zzieVarZzv.zzk(hVar.b());
            zzieVarZzv.zzj(hVar.a());
            zzieVarZzv.zzl(i10);
            zzhxVarZzv.zzi(zzieVarZzv);
            zzhxVarZzv.zzk(i11);
            return (zzhy) zzhxVarZzv.zzc();
        } catch (Exception e) {
            zzb.zzl("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }

    @Nullable
    public static zzic b(int i10) {
        try {
            zzib zzibVarZzv = zzic.zzv();
            zzibVarZzv.zzj(i10);
            return (zzic) zzibVarZzv.zzc();
        } catch (Exception e) {
            zzb.zzl("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }
}
