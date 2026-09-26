package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzej;
import com.google.android.gms.internal.play_billing.zzhy;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@VisibleForTesting
final class s1 extends BroadcastReceiver {
    final /* synthetic */ t1 zza;
    private final p zzb;
    private final v0 zzc;
    private final d zzd;
    private final u zze;
    private final n0 zzf;
    private boolean zzg;

    /* synthetic */ s1(t1 t1Var, v0 v0Var, n0 n0Var, q1 q1Var) {
        this.zza = t1Var;
        this.zzb = null;
        this.zzf = n0Var;
    }

    static /* bridge */ /* synthetic */ v0 a(s1 s1Var) {
        s1Var.getClass();
        return null;
    }

    public final synchronized void c(Context context, IntentFilter intentFilter, @Nullable String str, @Nullable IntentFilter intentFilter2) {
        try {
            if (this.zzg) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.zza.zzb, intentFilter, null, null, 2);
            } else {
                this.zza.zza.getApplicationContext().getPackageName();
                context.registerReceiver(this.zza.zzb, intentFilter);
            }
            this.zzg = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(Context context) {
        if (!this.zzg) {
            zzb.zzk("BillingBroadcastManager", "Receiver is not registered.");
        } else {
            context.unregisterReceiver(this.zza.zzb);
            this.zzg = false;
        }
    }

    /* synthetic */ s1(t1 t1Var, p pVar, d dVar, n0 n0Var, q1 q1Var) {
        this.zza = t1Var;
        this.zzb = pVar;
        this.zzf = n0Var;
    }

    private final void e(Bundle bundle, h hVar, int i10) {
        if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") == null) {
            this.zzf.a(m0.a(23, i10, hVar));
            return;
        }
        try {
            this.zzf.a(zzhy.zzx(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzej.zza()));
        } catch (Throwable unused) {
            zzb.zzk("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        int i10 = 1;
        if (extras == null) {
            zzb.zzk("BillingBroadcastManager", "Bundle is null.");
            n0 n0Var = this.zzf;
            h hVar = p0.zzj;
            n0Var.a(m0.a(11, 1, hVar));
            p pVar = this.zzb;
            if (pVar != null) {
                pVar.a(hVar, null);
                return;
            }
            return;
        }
        h hVarZze = zzb.zze(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        String string = extras.getString("INTENT_SOURCE");
        if (string == "LAUNCH_BILLING_FLOW" || (string != null && string.equals("LAUNCH_BILLING_FLOW"))) {
            i10 = 2;
        }
        if (!action.equals("com.android.vending.billing.PURCHASES_UPDATED") && !action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                if (hVarZze.b() != 0) {
                    e(extras, hVarZze, i10);
                    this.zzb.a(hVarZze, zzaf.zzk());
                    return;
                }
                zzb.zzk("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
                n0 n0Var2 = this.zzf;
                h hVar2 = p0.zzj;
                n0Var2.a(m0.a(77, i10, hVar2));
                this.zzb.a(hVar2, zzaf.zzk());
                return;
            }
            return;
        }
        List<Purchase> listZzi = zzb.zzi(extras);
        if (hVarZze.b() == 0) {
            this.zzf.c(m0.b(i10));
        } else {
            e(extras, hVarZze, i10);
        }
        this.zzb.a(hVarZze, listZzi);
    }
}
