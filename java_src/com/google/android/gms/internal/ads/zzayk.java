package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;

/* loaded from: classes2.dex */
final class zzayk implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzayj zzdwu;

    zzayk(zzayj zzayjVar) {
        this.zzdwu = zzayjVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zza(this.zzdwu.val$context, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
