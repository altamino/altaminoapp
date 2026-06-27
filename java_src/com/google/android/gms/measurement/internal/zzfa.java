package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* loaded from: classes2.dex */
final class zzfa implements Runnable {
    private final /* synthetic */ ComponentName val$name;
    private final /* synthetic */ zzey zzqz;

    zzfa(zzey zzeyVar, ComponentName componentName) {
        this.zzqz = zzeyVar;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzqz.zzqq.onServiceDisconnected(this.val$name);
    }
}
