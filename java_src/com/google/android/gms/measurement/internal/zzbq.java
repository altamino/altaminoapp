package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzbq implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzby zzmk;
    private final /* synthetic */ zzau zzml;
    private final /* synthetic */ long zzmm;
    private final /* synthetic */ Bundle zzmn;
    private final /* synthetic */ BroadcastReceiver.PendingResult zzmo;

    zzbq(zzbo zzboVar, zzby zzbyVar, long j, Bundle bundle, Context context, zzau zzauVar, BroadcastReceiver.PendingResult pendingResult) {
        this.zzmk = zzbyVar;
        this.zzmm = j;
        this.zzmn = bundle;
        this.val$context = context;
        this.zzml = zzauVar;
        this.zzmo = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        long j = this.zzmk.zzae().zzlg.get();
        long j2 = this.zzmm;
        if (j > 0 && (j2 >= j || j2 <= 0)) {
            j2 = j - 1;
        }
        if (j2 > 0) {
            this.zzmn.putLong("click_timestamp", j2);
        }
        this.zzmn.putString("_cis", "referrer broadcast");
        zzby.zza(this.val$context, (com.google.android.gms.internal.measurement.zzy) null).zzs().logEvent("auto", "_cmp", this.zzmn);
        this.zzml.zzdi().zzaq("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.zzmo;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
