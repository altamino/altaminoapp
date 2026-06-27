package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes2.dex */
public class zzdbh extends Handler {
    private static volatile zzdbi zzgoy;

    public zzdbh() {
    }

    public zzdbh(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zzb(message);
    }

    protected void zzb(Message message) {
        super.dispatchMessage(message);
    }
}
