package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzaps implements View.OnClickListener {
    private final /* synthetic */ zzapr zzdik;

    zzaps(zzapr zzaprVar) {
        this.zzdik = zzaprVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzdik.zzw(true);
    }
}
