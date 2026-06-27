package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzcss implements zzcuz<Bundle> {
    private final String zzdnd;
    private final Bundle zzghc;

    private zzcss(String str, Bundle bundle) {
        this.zzdnd = str;
        this.zzghc = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.zzdnd);
        bundle2.putBundle("iab_consent_info", this.zzghc);
    }
}
