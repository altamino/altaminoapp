package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziv;

/* JADX INFO: loaded from: classes6.dex */
final class u0 {
    private boolean zza;
    private f2.f zzb;

    public final void a(zziv zzivVar) {
        if (this.zza) {
            zzb.zzk("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.zzb.b(f2.c.d(zzivVar));
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "logging failed.");
        }
    }

    u0(Context context) {
        try {
            com.google.android.datatransport.runtime.u.f(context);
            this.zzb = com.google.android.datatransport.runtime.u.c().g(com.google.android.datatransport.cct.a.INSTANCE).a("PLAY_BILLING_LIBRARY", zziv.class, f2.b.b("proto"), new f2.e() { // from class: com.android.billingclient.api.t0
                @Override // f2.e
                public final Object apply(Object obj) {
                    return ((zziv) obj).zzc();
                }
            });
        } catch (Throwable unused) {
            this.zza = true;
        }
    }
}
