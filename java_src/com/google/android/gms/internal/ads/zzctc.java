package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzctc implements zzcuz<Bundle> {
    private final String zzdmn;

    public zzctc(String str) {
        this.zzdmn = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        bundle.putString("gct", this.zzdmn);
    }
}
