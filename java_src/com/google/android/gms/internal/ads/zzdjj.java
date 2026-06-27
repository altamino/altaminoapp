package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzdjj implements zzdlk {
    private final SecretKeySpec zzgxn;
    private final int zzgxo;
    private final int zzgxp;

    public zzdjj(byte[] bArr, int i) throws GeneralSecurityException {
        zzdlx.zzfg(bArr.length);
        this.zzgxn = new SecretKeySpec(bArr, "AES");
        this.zzgxp = zzdkx.zzhap.zzgt("AES/CTR/NoPadding").getBlockSize();
        if (i < 12 || i > this.zzgxp) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.zzgxo = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final byte[] zzo(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzgxo;
        if (length > Integer.MAX_VALUE - i) {
            int i2 = Integer.MAX_VALUE - i;
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(i2);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[bArr.length + i];
        byte[] bArrZzff = zzdlo.zzff(i);
        System.arraycopy(bArrZzff, 0, bArr2, 0, this.zzgxo);
        int length2 = bArr.length;
        int i3 = this.zzgxo;
        Cipher cipherZzgt = zzdkx.zzhap.zzgt("AES/CTR/NoPadding");
        byte[] bArr3 = new byte[this.zzgxp];
        System.arraycopy(bArrZzff, 0, bArr3, 0, this.zzgxo);
        cipherZzgt.init(1, this.zzgxn, new IvParameterSpec(bArr3));
        if (cipherZzgt.doFinal(bArr, 0, length2, bArr2, i3) == length2) {
            return bArr2;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
