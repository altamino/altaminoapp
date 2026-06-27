package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.app.NotificationCompat;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcsh implements zzcva<zzcsg> {
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcsh(zzbbl zzbblVar, Context context) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcsg> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsi
            private final zzcsh zzggu;

            {
                this.zzggu = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggu.zzalp();
            }
        });
    }

    final /* synthetic */ zzcsg zzalp() throws Exception {
        double d;
        Intent intentRegisterReceiver = this.zzlj.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (intentRegisterReceiver != null) {
            int intExtra = intentRegisterReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
            double intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
            double intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d = -1.0d;
        }
        return new zzcsg(d, z);
    }
}
