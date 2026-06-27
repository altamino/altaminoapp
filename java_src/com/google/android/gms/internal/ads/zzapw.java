package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
final class zzapw implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzapu zzdip;

    zzapw(zzapu zzapuVar) {
        this.zzdip = zzapuVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdip.zzdh("User canceled the download.");
    }
}
