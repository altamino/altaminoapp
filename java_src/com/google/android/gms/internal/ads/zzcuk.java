package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcuk implements zzcuz<Bundle> {
    private final String zzghs;

    public zzcuk(String str) {
        this.zzghs = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        bundle.putString("rtb", this.zzghs);
    }
}
