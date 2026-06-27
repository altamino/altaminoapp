package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
final class zzaxn extends BroadcastReceiver {
    private final /* synthetic */ zzaxi zzdvz;

    private zzaxn(zzaxi zzaxiVar) {
        this.zzdvz = zzaxiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzdvz.zzxt = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.zzdvz.zzxt = false;
        }
    }

    /* synthetic */ zzaxn(zzaxi zzaxiVar, zzaxj zzaxjVar) {
        this(zzaxiVar);
    }
}
