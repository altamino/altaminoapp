package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzdm implements Runnable {
    private final /* synthetic */ zzdd zzpm;
    private final /* synthetic */ Bundle zzpt;

    zzdm(zzdd zzddVar, Bundle bundle) {
        this.zzpm = zzddVar;
        this.zzpt = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzpm.zzf(this.zzpt);
    }
}
