package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
final class zzgj extends Handler {
    private final /* synthetic */ zzgi zzabx;

    zzgj(zzgi zzgiVar) {
        this.zzabx = zzgiVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzabx.zza(message);
    }
}
