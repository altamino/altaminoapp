package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
final class zzej extends BroadcastReceiver {
    private final /* synthetic */ zzeh zzzc;

    zzej(zzeh zzehVar) {
        this.zzzc = zzehVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzzc.zzcw();
    }
}
