package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
final class zzapq implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzapo zzdhw;

    zzapq(zzapo zzapoVar) {
        this.zzdhw = zzapoVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdhw.zzdh("Operation denied by user.");
    }
}
