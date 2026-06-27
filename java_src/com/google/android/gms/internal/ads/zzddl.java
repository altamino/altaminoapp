package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
final class zzddl extends zzdbt<zzdby, zzdgl, zzdgn> {
    public zzddl() {
        super(zzdby.class, zzdgl.class, zzdgn.class, "type.googleapis.com/google.crypto.tink.HmacKey");
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final zzdgr.zzb zzans() {
        return zzdgr.zzb.SYMMETRIC;
    }

    private static void zza(zzdgp zzdgpVar) throws GeneralSecurityException {
        if (zzdgpVar.zzarq() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int i = zzddm.zzgqb[zzdgpVar.zzarp().ordinal()];
        if (i == 1) {
            if (zzdgpVar.zzarq() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (i == 2) {
            if (zzdgpVar.zzarq() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (i == 3) {
                if (zzdgpVar.zzarq() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            }
            throw new GeneralSecurityException("unknown hash type");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzt(zzdmr zzdmrVar) throws zzdok {
        return zzdgn.zzbm(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ zzdpk zzs(zzdmr zzdmrVar) throws zzdok {
        return zzdgl.zzbk(zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdpk zzg(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdgn zzdgnVar = (zzdgn) zzdpkVar;
        return (zzdgl) zzdgl.zzark().zzem(0).zzc(zzdgnVar.zzarj()).zzbl(zzdmr.zzz(zzdlo.zzff(zzdgnVar.getKeySize()))).zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final /* synthetic */ zzdby zze(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdgl zzdglVar = (zzdgl) zzdpkVar;
        zzdgj zzdgjVarZzarp = zzdglVar.zzarj().zzarp();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzdglVar.zzaoi().toByteArray(), "HMAC");
        int iZzarq = zzdglVar.zzarj().zzarq();
        int i = zzddm.zzgqb[zzdgjVarZzarp.ordinal()];
        if (i == 1) {
            return new zzdll("HMACSHA1", secretKeySpec, iZzarq);
        }
        if (i == 2) {
            return new zzdll("HMACSHA256", secretKeySpec, iZzarq);
        }
        if (i == 3) {
            return new zzdll("HMACSHA512", secretKeySpec, iZzarq);
        }
        throw new GeneralSecurityException("unknown hash");
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzd(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdgn zzdgnVar = (zzdgn) zzdpkVar;
        if (zzdgnVar.getKeySize() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdgnVar.zzarj());
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    protected final /* synthetic */ void zzc(zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdgl zzdglVar = (zzdgl) zzdpkVar;
        zzdlx.zzu(zzdglVar.getVersion(), 0);
        if (zzdglVar.zzaoi().size() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdglVar.zzarj());
    }
}
