package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzbo {
    private final zzbr zzmj;

    public zzbo(zzbr zzbrVar) {
        Preconditions.checkNotNull(zzbrVar);
        this.zzmj = zzbrVar;
    }

    public static boolean zzl(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public final void onReceive(Context context, Intent intent) throws IllegalStateException {
        zzby zzbyVarZza = zzby.zza(context, (com.google.android.gms.internal.measurement.zzy) null);
        zzau zzauVarZzad = zzbyVarZza.zzad();
        if (intent == null) {
            zzauVarZzad.zzdd().zzaq("Receiver called with null intent");
            return;
        }
        zzbyVarZza.zzag();
        String action = intent.getAction();
        zzauVarZzad.zzdi().zza("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzauVarZzad.zzdi().zzaq("Starting wakeful intent.");
            this.zzmj.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                zzbyVarZza.zzac().zza(new zzbp(this, zzbyVarZza, zzauVarZzad));
            } catch (Exception e) {
                zzauVarZzad.zzdd().zza("Install Referrer Reporter encountered a problem", e);
            }
            BroadcastReceiver.PendingResult pendingResultDoGoAsync = this.zzmj.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzauVarZzad.zzdi().zzaq("Install referrer extras are null");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            zzauVarZzad.zzdg().zza("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String strValueOf = String.valueOf(stringExtra);
                stringExtra = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            Bundle bundleZza = zzbyVarZza.zzab().zza(Uri.parse(stringExtra));
            if (bundleZza == null) {
                zzauVarZzad.zzdi().zzaq("No campaign defined in install referrer broadcast");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzauVarZzad.zzdd().zzaq("Install referrer is missing timestamp");
            }
            zzbyVarZza.zzac().zza(new zzbq(this, zzbyVarZza, longExtra, bundleZza, context, zzauVarZzad, pendingResultDoGoAsync));
        }
    }
}
