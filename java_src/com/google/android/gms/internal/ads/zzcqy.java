package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcqy implements zzdti<zzbbh<zzcrc>> {
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzcqz> zzfwn;
    private final zzdtu<zzbbh<zzarx>> zzfwo;

    public zzcqy(zzdtu<zzczt> zzdtuVar, zzdtu<zzcqz> zzdtuVar2, zzdtu<zzbbh<zzarx>> zzdtuVar3) {
        this.zzfhv = zzdtuVar;
        this.zzfwn = zzdtuVar2;
        this.zzfwo = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbbh) zzdto.zza(this.zzfhv.get().zza((zzczt) zzczs.GENERATE_SIGNALS, (zzbbh) this.zzfwo.get()).zza(this.zzfwn.get()).zza(((Integer) zzyt.zzpe().zzd(zzacu.zzcvn)).intValue(), TimeUnit.SECONDS).zzane(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
