package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdcn extends zzdbt<zzdlk, zzdeb, zzded> {
    public zzdcn() {
        super(zzdlk.class, zzdeb.class, zzded.class, "type.googleapis.com/google.crypto.tink.AesCtrKey");
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final zzdgr.zzb zzans() {
        return zzdgr.zzb.SYMMETRIC;
    }

    private static void zza(zzdef zzdefVar) throws GeneralSecurityException {
        if (zzdefVar.zzaoy() < 12 || zzdefVar.zzaoy() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzded.zzac(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdeb.zzaa(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzded zzdedVar = (zzded) zzdpkVar;
        return (zzdeb) zzdeb.zzaot().zzc(zzdedVar.zzaos()).zzab(zzdmr.zzz(zzdlo.zzff(zzdedVar.getKeySize()))).zzdw(0).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdlk zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdeb zzdebVar = (zzdeb) zzdpkVar;
        return new zzdjj(zzdebVar.zzaoi().toByteArray(), zzdebVar.zzaos().zzaoy());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzded zzdedVar = (zzded) zzdpkVar;
        zzdlx.zzfg(zzdedVar.getKeySize());
        zza(zzdedVar.zzaos());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdeb zzdebVar = (zzdeb) zzdpkVar;
        zzdlx.zzu(zzdebVar.getVersion(), 0);
        zzdlx.zzfg(zzdebVar.zzaoi().size());
        zza(zzdebVar.zzaos());
    }
}
