package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes2.dex */
final class zzapp implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzapo zzdhw;

    zzapp(zzapo zzapoVar) {
        this.zzdhw = zzapoVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent intentCreateIntent = this.zzdhw.createIntent();
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zza(this.zzdhw.zzlj, intentCreateIntent);
    }
}
