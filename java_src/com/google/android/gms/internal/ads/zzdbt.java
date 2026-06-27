package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import com.google.android.gms.internal.ads.zzdpk;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public abstract class zzdbt<P, KeyProto extends zzdpk, KeyFormatProto extends zzdpk> implements zzdbs<P> {
    private final Class<P> zzgpd;
    private final Class<KeyProto> zzgpe;
    private final Class<KeyFormatProto> zzgpf;
    private final String zzgpg;

    protected zzdbt(Class<P> cls, Class<KeyProto> cls2, Class<KeyFormatProto> cls3, String str) {
        this.zzgpd = cls;
        this.zzgpe = cls2;
        this.zzgpf = cls3;
        this.zzgpg = str;
    }

    protected abstract zzdgr.zzb zzans();

    protected abstract void zzc(KeyProto keyproto) throws GeneralSecurityException;

    protected abstract void zzd(KeyFormatProto keyformatproto) throws GeneralSecurityException;

    protected abstract P zze(KeyProto keyproto) throws GeneralSecurityException;

    protected abstract KeyProto zzg(KeyFormatProto keyformatproto) throws GeneralSecurityException;

    protected abstract KeyProto zzs(zzdmr zzdmrVar) throws zzdok;

    protected abstract KeyFormatProto zzt(zzdmr zzdmrVar) throws zzdok;

    /* JADX WARN: Multi-variable type inference failed */
    private static <Casted> Casted zza(Object obj, String str, Class<Casted> cls) throws GeneralSecurityException {
        if (cls.isInstance(obj)) {
            return obj;
        }
        throw new GeneralSecurityException(str);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final P zzp(zzdmr zzdmrVar) throws GeneralSecurityException {
        try {
            return zzf(zzs(zzdmrVar));
        } catch (zzdok e) {
            String strValueOf = String.valueOf(this.zzgpe.getName());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "Failures parsing proto of type ".concat(strValueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final P zza(zzdpk zzdpkVar) throws GeneralSecurityException {
        String strValueOf = String.valueOf(this.zzgpe.getName());
        return zzf((zzdpk) zza(zzdpkVar, strValueOf.length() != 0 ? "Expected proto of type ".concat(strValueOf) : new String("Expected proto of type "), this.zzgpe));
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final zzdpk zzq(zzdmr zzdmrVar) throws GeneralSecurityException {
        try {
            return zzh(zzt(zzdmrVar));
        } catch (zzdok e) {
            String strValueOf = String.valueOf(this.zzgpf.getName());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "Failures parsing proto of type ".concat(strValueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final zzdpk zzb(zzdpk zzdpkVar) throws GeneralSecurityException {
        String strValueOf = String.valueOf(this.zzgpf.getName());
        return zzh((zzdpk) zza(zzdpkVar, strValueOf.length() != 0 ? "Expected proto of type ".concat(strValueOf) : new String("Expected proto of type "), this.zzgpf));
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final String getKeyType() {
        return this.zzgpg;
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final zzdgr zzr(zzdmr zzdmrVar) throws GeneralSecurityException {
        try {
            return (zzdgr) zzdgr.zzarw().zzgk(this.zzgpg).zzbo(zzh(zzt(zzdmrVar)).zzavf()).zzb(zzans()).zzaya();
        } catch (zzdok e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final Class<P> zzanr() {
        return this.zzgpd;
    }

    private final P zzf(KeyProto keyproto) throws GeneralSecurityException {
        zzc(keyproto);
        return zze(keyproto);
    }

    private final KeyProto zzh(KeyFormatProto keyformatproto) throws GeneralSecurityException {
        zzd(keyformatproto);
        KeyProto keyproto = (KeyProto) zzg(keyformatproto);
        zzc(keyproto);
        return keyproto;
    }
}
