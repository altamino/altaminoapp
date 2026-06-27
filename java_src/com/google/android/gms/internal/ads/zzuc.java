package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
final class zzuc extends BroadcastReceiver {
    private final /* synthetic */ zzua zzbtn;

    zzuc(zzua zzuaVar) {
        this.zzbtn = zzuaVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzbtn.zzbu(3);
    }
}
