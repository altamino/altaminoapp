package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgr;
import com.google.android.gms.internal.ads.zzdha;
import java.io.IOException;
import java.security.GeneralSecurityException;

@Deprecated
/* loaded from: classes2.dex */
public final class zzdbz {
    @Deprecated
    public static final zzdbu zzl(byte[] bArr) throws GeneralSecurityException {
        try {
            zzdha zzdhaVarZzn = zzdha.zzn(bArr);
            zzb(zzdhaVarZzn);
            return zzdbu.zza(zzdhaVarZzn);
        } catch (zzdok unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    public static final zzdbu zza(zzdbv zzdbvVar) throws GeneralSecurityException, IOException {
        zzdha zzdhaVarZzanq = zzdbvVar.zzanq();
        zzb(zzdhaVarZzanq);
        return zzdbu.zza(zzdhaVarZzanq);
    }

    private static void zzb(zzdha zzdhaVar) throws GeneralSecurityException {
        for (zzdha.zzb zzbVar : zzdhaVar.zzasi()) {
            if (zzbVar.zzasn().zzarv() == zzdgr.zzb.UNKNOWN_KEYMATERIAL || zzbVar.zzasn().zzarv() == zzdgr.zzb.SYMMETRIC || zzbVar.zzasn().zzarv() == zzdgr.zzb.ASYMMETRIC_PRIVATE) {
                throw new GeneralSecurityException("keyset contains secret key material");
            }
        }
    }
}
