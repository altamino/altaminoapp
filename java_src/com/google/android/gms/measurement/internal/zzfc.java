package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes2.dex */
final class zzfc implements Runnable {
    private final /* synthetic */ zzey zzqz;

    zzfc(zzey zzeyVar) {
        this.zzqz = zzeyVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzeg zzegVar = this.zzqz.zzqq;
        Context context = zzegVar.getContext();
        this.zzqz.zzqq.zzag();
        zzegVar.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
