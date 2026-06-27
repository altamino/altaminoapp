package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbok implements zzdti<Boolean> {
    private final zzdtu<zzcxv> zzfhr;

    public zzbok(zzdtu<zzcxv> zzdtuVar) {
        this.zzfhr = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        boolean zBooleanValue;
        if (this.zzfhr.get().zzamn() != null) {
            zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcpm)).booleanValue();
        } else {
            zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcvq)).booleanValue();
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
