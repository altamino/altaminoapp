package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdcr extends zzdbt<zzdbj, zzdhe, zzdhg> {
    public zzdcr() {
        super(zzdbj.class, zzdhe.class, zzdhg.class, "type.googleapis.com/google.crypto.tink.KmsAeadKey");
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* bridge */ /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final zzdgr.zzb zzans() {
        return zzdgr.zzb.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzdhg.zzbq(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdhe.zzbp(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        return (zzdhe) zzdhe.zzasx().zzb((zzdhg) zzdpkVar).zzex(0).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdbj zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        String strZzasz = ((zzdhe) zzdpkVar).zzasw().zzasz();
        return zzdbx.zzgh(strZzasz).zzgg(strZzasz);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdlx.zzu(((zzdhe) zzdpkVar).getVersion(), 0);
    }
}
