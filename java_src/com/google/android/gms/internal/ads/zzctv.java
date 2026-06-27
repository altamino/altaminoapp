package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzctv implements zzcuz<Bundle> {
    private final String zzlq;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzd(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    public zzctv(String str) {
        this.zzlq = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        zzcxz.zza(bundle, "omid_v", this.zzlq);
    }
}
