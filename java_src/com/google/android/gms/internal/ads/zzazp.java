package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Map;
import java.util.WeakHashMap;

@zzard
/* loaded from: classes2.dex */
public final class zzazp {
    private boolean zzdyf;
    private Context zzys;
    private boolean zzxs = false;
    private final Map<BroadcastReceiver, IntentFilter> zzdye = new WeakHashMap();
    private final BroadcastReceiver zzdyd = new zzazq(this);

    public final synchronized void initialize(Context context) {
        if (this.zzxs) {
            return;
        }
        this.zzys = context.getApplicationContext();
        if (this.zzys == null) {
            this.zzys = context;
        }
        zzacu.initialize(this.zzys);
        this.zzdyf = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcsj)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.zzys.registerReceiver(this.zzdyd, intentFilter);
        this.zzxs = true;
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.zzdyf) {
            this.zzdye.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.zzdyf) {
            this.zzdye.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzc(Context context, Intent intent) {
        for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.zzdye.entrySet()) {
            if (entry.getValue().hasAction(intent.getAction())) {
                entry.getKey().onReceive(context, intent);
            }
        }
    }
}
