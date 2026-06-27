package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes2.dex */
final class zzlb extends Handler {
    private final /* synthetic */ zzla zzash;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlb(zzla zzlaVar, Looper looper) {
        super(looper);
        this.zzash = zzlaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzash.zza(message);
    }
}
