package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
final class zzczu extends zzbts<zzczz> implements zzczr<zzczs> {
    zzczu(Set<zzbuz<zzczz>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzczr
    public final void zza(final zzcze<zzczs, ?> zzczeVar) {
        zza(new zzbtu(zzczeVar) { // from class: com.google.android.gms.internal.ads.zzczv
            private final zzcze zzgno;

            {
                this.zzgno = zzczeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                zzcze zzczeVar2 = this.zzgno;
                ((zzczz) obj).zza((zzczs) zzczeVar2.zzanb(), zzczeVar2.zzanc());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczr
    public final void zzb(final zzcze<zzczs, ?> zzczeVar) {
        zza(new zzbtu(zzczeVar) { // from class: com.google.android.gms.internal.ads.zzczw
            private final zzcze zzgno;

            {
                this.zzgno = zzczeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                zzcze zzczeVar2 = this.zzgno;
                ((zzczz) obj).zzb((zzczs) zzczeVar2.zzanb(), zzczeVar2.zzanc());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczr
    public final void zza(final zzcze<zzczs, ?> zzczeVar, final Throwable th) {
        zza(new zzbtu(zzczeVar, th) { // from class: com.google.android.gms.internal.ads.zzczx
            private final zzcze zzgno;
            private final Throwable zzgnp;

            {
                this.zzgno = zzczeVar;
                this.zzgnp = th;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                zzcze zzczeVar2 = this.zzgno;
                ((zzczz) obj).zza((zzczs) zzczeVar2.zzanb(), zzczeVar2.zzanc(), this.zzgnp);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczr
    public final void zzc(final zzcze<zzczs, ?> zzczeVar) {
        zza(new zzbtu(zzczeVar) { // from class: com.google.android.gms.internal.ads.zzczy
            private final zzcze zzgno;

            {
                this.zzgno = zzczeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                zzcze zzczeVar2 = this.zzgno;
                ((zzczz) obj).zzc((zzczs) zzczeVar2.zzanb(), zzczeVar2.zzanc());
            }
        });
    }
}
