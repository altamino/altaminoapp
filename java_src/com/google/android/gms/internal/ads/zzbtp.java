package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtp extends zzbts<AppEventListener> implements zzagx {
    public zzbtp(Set<zzbuz<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzagx
    public final synchronized void onAppEvent(final String str, final String str2) {
        zza(new zzbtu(str, str2) { // from class: com.google.android.gms.internal.ads.zzbtq
            private final String zzdbk;
            private final String zzddy;

            {
                this.zzddy = str;
                this.zzdbk = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((AppEventListener) obj).onAppEvent(this.zzddy, this.zzdbk);
            }
        });
    }
}
