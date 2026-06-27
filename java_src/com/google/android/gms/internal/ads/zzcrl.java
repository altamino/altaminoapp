package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcrl implements zzbal {
    static final zzbal zzbqz = new zzcrl();

    private zzcrl() {
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final zzbbh zzf(Object obj) {
        final String str = (String) obj;
        return zzbar.zzm(new zzcuz(str) { // from class: com.google.android.gms.internal.ads.zzcrm
            private final String zzddy;

            {
                this.zzddy = str;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj2) {
                ((Bundle) obj2).putString("ms", this.zzddy);
            }
        });
    }
}
