package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdeb;
import com.google.android.gms.internal.ads.zzdet;
import com.google.android.gms.internal.ads.zzdgl;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzddk implements zzdka {
    private final String zzgqe;
    private final int zzgqf;
    private zzdet zzgqg;
    private zzddr zzgqh;
    private int zzgqi;

    zzddk(zzdgw zzdgwVar) throws GeneralSecurityException {
        this.zzgqe = zzdgwVar.zzart();
        if (this.zzgqe.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzdev zzdevVarZzal = zzdev.zzal(zzdgwVar.zzaru());
                this.zzgqg = (zzdet) zzdcf.zzb(zzdgwVar);
                this.zzgqf = zzdevVarZzal.getKeySize();
                return;
            } catch (zzdok e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        }
        if (!this.zzgqe.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            String strValueOf = String.valueOf(this.zzgqe);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(strValueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            zzddt zzddtVarZzv = zzddt.zzv(zzdgwVar.zzaru());
            this.zzgqh = (zzddr) zzdcf.zzb(zzdgwVar);
            this.zzgqi = zzddtVarZzv.zzaoe().getKeySize();
            this.zzgqf = this.zzgqi + zzddtVarZzv.zzaof().getKeySize();
        } catch (zzdok e2) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdka
    public final int zzanz() {
        return this.zzgqf;
    }

    @Override // com.google.android.gms.internal.ads.zzdka
    public final zzdbj zzm(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.zzgqf) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.zzgqe.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            return (zzdbj) zzdcf.zza(this.zzgqe, (zzdet) zzdet.zzapn().zza((zzdet.zza) this.zzgqg).zzak(zzdmr.zzi(bArr, 0, this.zzgqf)).zzaya(), zzdbj.class);
        }
        if (this.zzgqe.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, this.zzgqi);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, this.zzgqi, this.zzgqf);
            zzdeb zzdebVar = (zzdeb) zzdeb.zzaot().zza((zzdeb.zza) this.zzgqh.zzaoa()).zzab(zzdmr.zzz(bArrCopyOfRange)).zzaya();
            return (zzdbj) zzdcf.zza(this.zzgqe, (zzddr) zzddr.zzaoc().zzdu(this.zzgqh.getVersion()).zzb(zzdebVar).zzb((zzdgl) zzdgl.zzark().zza((zzdgl.zza) this.zzgqh.zzaob()).zzbl(zzdmr.zzz(bArrCopyOfRange2)).zzaya()).zzaya(), zzdbj.class);
        }
        throw new GeneralSecurityException("unknown DEM key type");
    }
}
