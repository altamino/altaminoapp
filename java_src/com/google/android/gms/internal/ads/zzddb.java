package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzddb extends zzdbt<zzdbq, zzdfx, zzdgh> {
    public zzddb() {
        super(zzdbq.class, zzdfx.class, zzdgh.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
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
        return zzdgr.zzb.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzdgh.zzbj(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdfx.zzbc(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdbq zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdfx zzdfxVar = (zzdfx) zzdpkVar;
        zzdft zzdftVarZzaqn = zzdfxVar.zzaqn();
        zzdfz zzdfzVarZzaqp = zzdftVarZzaqn.zzaqp();
        return new zzdkc(zzdkr.zza(zzddi.zza(zzdfzVarZzaqp.zzara()), zzdfxVar.zzaqf().toByteArray(), zzdfxVar.zzaqg().toByteArray()), zzdfzVarZzaqp.zzarb().toByteArray(), zzddi.zza(zzdfzVarZzaqp.zzaoo()), zzddi.zza(zzdftVarZzaqn.zzaqr()), new zzddk(zzdftVarZzaqn.zzaqq().zzaqk()));
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdfx zzdfxVar = (zzdfx) zzdpkVar;
        zzdlx.zzu(zzdfxVar.getVersion(), 0);
        zzddi.zza(zzdfxVar.zzaqn());
    }
}
