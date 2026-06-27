package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
final class zzazq extends BroadcastReceiver {
    private final /* synthetic */ zzazp zzdyg;

    zzazq(zzazp zzazpVar) {
        this.zzdyg = zzazpVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzdyg.zzc(context, intent);
    }
}
