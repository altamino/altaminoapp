package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbry extends zzbts<zzbrx> {
    public zzbry(Set<zzbuz<zzbrx>> set) {
        super(set);
    }

    public final void zzbp(final Context context) {
        zza(new zzbtu(context) { // from class: com.google.android.gms.internal.ads.zzbrz
            private final Context zzdef;

            {
                this.zzdef = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbrx) obj).zzbp(this.zzdef);
            }
        });
    }

    public final void zzbq(final Context context) {
        zza(new zzbtu(context) { // from class: com.google.android.gms.internal.ads.zzbsa
            private final Context zzdef;

            {
                this.zzdef = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbrx) obj).zzbq(this.zzdef);
            }
        });
    }

    public final void zzbr(final Context context) {
        zza(new zzbtu(context) { // from class: com.google.android.gms.internal.ads.zzbsb
            private final Context zzdef;

            {
                this.zzdef = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbrx) obj).zzbr(this.zzdef);
            }
        });
    }

    public final void zza(zzbvp zzbvpVar, Executor executor) {
        zza(zzbuz.zzb(new zzbsc(this, zzbvpVar), executor));
    }
}
