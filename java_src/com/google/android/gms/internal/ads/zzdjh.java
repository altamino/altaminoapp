package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzdjh implements zzdby {
    private final SecretKey zzgxc;
    private final int zzgxd;
    private byte[] zzgxe;
    private byte[] zzgxf;

    private static Cipher zzauu() throws GeneralSecurityException {
        return zzdkx.zzhap.zzgt("AES/ECB/NoPadding");
    }

    public zzdjh(byte[] bArr, int i) throws GeneralSecurityException {
        zzdlx.zzfg(bArr.length);
        this.zzgxc = new SecretKeySpec(bArr, "AES");
        this.zzgxd = 16;
        Cipher cipherZzauu = zzauu();
        cipherZzauu.init(1, this.zzgxc);
        this.zzgxe = zzdjo.zzq(cipherZzauu.doFinal(new byte[16]));
        this.zzgxf = zzdjo.zzq(this.zzgxe);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final byte[] zzk(byte[] bArr) throws GeneralSecurityException {
        byte[] bArrZzd;
        Cipher cipherZzauu = zzauu();
        cipherZzauu.init(1, this.zzgxc);
        double length = bArr.length;
        Double.isNaN(length);
        int iMax = Math.max(1, (int) Math.ceil(length / 16.0d));
        if ((iMax << 4) == bArr.length) {
            bArrZzd = zzdjs.zza(bArr, (iMax - 1) << 4, this.zzgxe, 0, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) << 4, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = -128;
            bArrZzd = zzdjs.zzd(bArrCopyOf, this.zzgxf);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i = 0; i < iMax - 1; i++) {
            bArrDoFinal = cipherZzauu.doFinal(zzdjs.zza(bArrDoFinal, 0, bArr, i << 4, 16));
        }
        byte[] bArrZzd2 = zzdjs.zzd(bArrZzd, bArrDoFinal);
        byte[] bArr2 = new byte[this.zzgxd];
        System.arraycopy(cipherZzauu.doFinal(bArrZzd2), 0, bArr2, 0, this.zzgxd);
        return bArr2;
    }
}
