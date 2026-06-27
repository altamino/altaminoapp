package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdcp extends zzdbt<zzdbj, zzdet, zzdev> {
    public zzdcp() {
        super(zzdbj.class, zzdet.class, zzdev.class, "type.googleapis.com/google.crypto.tink.AesGcmKey");
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
        return zzdev.zzal(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdet.zzaj(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        return (zzdet) zzdet.zzapn().zzak(zzdmr.zzz(zzdlo.zzff(((zzdev) zzdpkVar).getKeySize()))).zzdz(0).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdbj zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        return new zzdjm(((zzdet) zzdpkVar).zzaoi().toByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdlx.zzfg(((zzdev) zzdpkVar).getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdet zzdetVar = (zzdet) zzdpkVar;
        zzdlx.zzu(zzdetVar.getVersion(), 0);
        zzdlx.zzfg(zzdetVar.zzaoi().size());
    }
}
