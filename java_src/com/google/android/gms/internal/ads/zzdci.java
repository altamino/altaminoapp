package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdci implements zzdbk<zzdbj> {
    @Override // com.google.android.gms.internal.ads.zzdbk
    public final zzdbs<zzdbj> zzb(String str, String str2, int i) throws GeneralSecurityException {
        zzdbs<zzdbj> zzdcmVar;
        String lowerCase = str2.toLowerCase();
        if (((lowerCase.hashCode() == 2989895 && lowerCase.equals("aead")) ? (char) 0 : (char) 65535) != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        switch (str) {
            case "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey":
                zzdcmVar = new zzdcm();
                break;
            case "type.googleapis.com/google.crypto.tink.AesEaxKey":
                zzdcmVar = new zzdco();
                break;
            case "type.googleapis.com/google.crypto.tink.AesGcmKey":
                zzdcmVar = new zzdcp();
                break;
            case "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key":
                zzdcmVar = new zzdcq();
                break;
            case "type.googleapis.com/google.crypto.tink.KmsAeadKey":
                zzdcmVar = new zzdcr();
                break;
            case "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey":
                zzdcmVar = new zzdct();
                break;
            case "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key":
                zzdcmVar = new zzdcu();
                break;
            default:
                throw new GeneralSecurityException(String.format("No support for primitive 'Aead' with key type '%s'.", str));
        }
        if (zzdcmVar.getVersion() >= i) {
            return zzdcmVar;
        }
        throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
    }

    @Override // com.google.android.gms.internal.ads.zzdbk
    public final zzdcc<zzdbj> zzanp() {
        return new zzdck();
    }
}
