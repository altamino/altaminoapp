package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdcm extends zzdbt<zzdbj, zzddr, zzddt> {
    public zzdcm() throws GeneralSecurityException {
        super(zzdbj.class, zzddr.class, zzddt.class, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzdcf.zza(new zzdcn());
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
        return zzddt.zzv(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzddr.zzu(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzddt zzddtVar = (zzddt) zzdpkVar;
        zzdeb zzdebVar = (zzdeb) zzdcf.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", zzddtVar.zzaoe());
        return (zzddr) zzddr.zzaoc().zzb(zzdebVar).zzb((zzdgl) zzdcf.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzddtVar.zzaof())).zzdu(0).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdbj zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzddr zzddrVar = (zzddr) zzdpkVar;
        return new zzdkw((zzdlk) zzdcf.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", zzddrVar.zzaoa(), zzdlk.class), (zzdby) zzdcf.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzddrVar.zzaob(), zzdby.class), zzddrVar.zzaob().zzarj().zzarq());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdlx.zzfg(((zzddt) zzdpkVar).zzaoe().getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdlx.zzu(((zzddr) zzdpkVar).getVersion(), 0);
    }
}
