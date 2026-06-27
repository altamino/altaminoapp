package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcuh implements zzcva<zzcuz<Bundle>> {
    private final String zzfju;
    private final Context zzlj;

    zzcuh(Context context, String str) {
        this.zzlj = context;
        this.zzfju = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuz<Bundle>> zzalm() {
        return zzbar.zzm(this.zzfju == null ? null : new zzcuz(this) { // from class: com.google.android.gms.internal.ads.zzcui
            private final zzcuh zzghr;

            {
                this.zzghr = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj) {
                this.zzghr.zzp((Bundle) obj);
            }
        });
    }

    final /* synthetic */ void zzp(Bundle bundle) {
        bundle.putString("rewarded_sku_package", this.zzlj.getPackageName());
    }
}
