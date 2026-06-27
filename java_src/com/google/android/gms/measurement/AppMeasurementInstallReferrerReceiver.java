package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzbo;
import com.google.android.gms.measurement.internal.zzbr;

/* loaded from: classes2.dex */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements zzbr {
    private zzbo zzo;

    @Override // com.google.android.gms.measurement.internal.zzbr
    public final void doStartService(Context context, Intent intent) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) throws IllegalStateException {
        if (this.zzo == null) {
            this.zzo = new zzbo(this);
        }
        this.zzo.onReceive(context, intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzbr
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }
}
