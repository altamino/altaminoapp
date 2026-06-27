package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdco extends zzdbt<zzdbj, zzdeh, zzdej> {
    public zzdco() {
        super(zzdbj.class, zzdeh.class, zzdej.class, "type.googleapis.com/google.crypto.tink.AesEaxKey");
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final zzdgr.zzb zzans() {
        return zzdgr.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzdej.zzaf(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdeh.zzad(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdej zzdejVar = (zzdej) zzdpkVar;
        return (zzdeh) zzdeh.zzapc().zzae(zzdmr.zzz(zzdlo.zzff(zzdejVar.getKeySize()))).zzb(zzdejVar.zzapb()).zzdx(0).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdbj zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdeh zzdehVar = (zzdeh) zzdpkVar;
        return new zzdjk(zzdehVar.zzaoi().toByteArray(), zzdehVar.zzapb().zzaoy());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdej zzdejVar = (zzdej) zzdpkVar;
        zzdlx.zzfg(zzdejVar.getKeySize());
        if (zzdejVar.zzapb().zzaoy() != 12 && zzdejVar.zzapb().zzaoy() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdeh zzdehVar = (zzdeh) zzdpkVar;
        zzdlx.zzu(zzdehVar.getVersion(), 0);
        zzdlx.zzfg(zzdehVar.zzaoi().size());
        if (zzdehVar.zzapb().zzaoy() != 12 && zzdehVar.zzapb().zzaoy() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
