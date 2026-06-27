package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;

/* loaded from: classes2.dex */
final class zzdda extends zzdbt<zzdbp, zzdfv, zzdfr> implements zzdbs<zzdbp> {
    public zzdda() {
        super(zzdbp.class, zzdfv.class, zzdfr.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final zzdgr.zzb zzans() {
        return zzdgr.zzb.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzdfr.zzaz(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdfv.zzba(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdfr zzdfrVar = (zzdfr) zzdpkVar;
        KeyPair keyPairZza = zzdkr.zza(zzdkr.zza(zzddi.zza(zzdfrVar.zzaqn().zzaqp().zzara())));
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairZza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairZza.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return (zzdfv) zzdfv.zzaqv().zzeg(0).zzb((zzdfx) zzdfx.zzaqx().zzeh(0).zzc(zzdfrVar.zzaqn()).zzbd(zzdmr.zzz(w.getAffineX().toByteArray())).zzbe(zzdmr.zzz(w.getAffineY().toByteArray())).zzaya()).zzbb(zzdmr.zzz(eCPrivateKey.getS().toByteArray())).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdbp zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdfv zzdfvVar = (zzdfv) zzdpkVar;
        zzdft zzdftVarZzaqn = zzdfvVar.zzaqu().zzaqn();
        zzdfz zzdfzVarZzaqp = zzdftVarZzaqn.zzaqp();
        return new zzdkb(zzdkr.zza(zzddi.zza(zzdfzVarZzaqp.zzara()), zzdfvVar.zzaoi().toByteArray()), zzdfzVarZzaqp.zzarb().toByteArray(), zzddi.zza(zzdfzVarZzaqp.zzaoo()), zzddi.zza(zzdftVarZzaqn.zzaqr()), new zzddk(zzdftVarZzaqn.zzaqq().zzaqk()));
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzddi.zza(((zzdfr) zzdpkVar).zzaqn());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdfv zzdfvVar = (zzdfv) zzdpkVar;
        zzdlx.zzu(zzdfvVar.getVersion(), 0);
        zzddi.zza(zzdfvVar.zzaqu().zzaqn());
    }
}
