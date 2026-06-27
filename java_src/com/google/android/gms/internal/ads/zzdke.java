package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzdke {
    private ECPublicKey zzgyv;

    public zzdke(ECPublicKey eCPublicKey) {
        this.zzgyv = eCPublicKey;
    }

    public final zzdkf zza(String str, byte[] bArr, byte[] bArr2, int i, zzdkv zzdkvVar) throws IllegalStateException, GeneralSecurityException {
        byte[] bArr3;
        KeyPair keyPairZza = zzdkr.zza(this.zzgyv.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairZza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairZza.getPrivate();
        ECPublicKey eCPublicKey2 = this.zzgyv;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            byte[] bArrZza = zzdkr.zza(eCPrivateKey, eCPublicKey2.getW());
            EllipticCurve curve = eCPublicKey.getParams().getCurve();
            ECPoint w = eCPublicKey.getW();
            zzdkr.zza(w, curve);
            int iZzb = zzdkr.zzb(curve);
            int i2 = zzdks.zzgzy[zzdkvVar.ordinal()];
            int i3 = 1;
            if (i2 == 1) {
                int i4 = (iZzb * 2) + 1;
                bArr3 = new byte[i4];
                byte[] byteArray = w.getAffineX().toByteArray();
                byte[] byteArray2 = w.getAffineY().toByteArray();
                System.arraycopy(byteArray2, 0, bArr3, i4 - byteArray2.length, byteArray2.length);
                System.arraycopy(byteArray, 0, bArr3, (iZzb + 1) - byteArray.length, byteArray.length);
                bArr3[0] = 4;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int i5 = iZzb + 1;
                    byte[] bArr4 = new byte[i5];
                    byte[] byteArray3 = w.getAffineX().toByteArray();
                    System.arraycopy(byteArray3, 0, bArr4, i5 - byteArray3.length, byteArray3.length);
                    bArr4[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                    bArr3 = bArr4;
                } else {
                    String strValueOf = String.valueOf(zzdkvVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 15);
                    sb.append("invalid format:");
                    sb.append(strValueOf);
                    throw new GeneralSecurityException(sb.toString());
                }
            } else {
                int i6 = iZzb * 2;
                bArr3 = new byte[i6];
                byte[] byteArray4 = w.getAffineX().toByteArray();
                if (byteArray4.length > iZzb) {
                    byteArray4 = Arrays.copyOfRange(byteArray4, byteArray4.length - iZzb, byteArray4.length);
                }
                byte[] byteArray5 = w.getAffineY().toByteArray();
                if (byteArray5.length > iZzb) {
                    byteArray5 = Arrays.copyOfRange(byteArray5, byteArray5.length - iZzb, byteArray5.length);
                }
                System.arraycopy(byteArray5, 0, bArr3, i6 - byteArray5.length, byteArray5.length);
                System.arraycopy(byteArray4, 0, bArr3, iZzb - byteArray4.length, byteArray4.length);
            }
            byte[] bArrZza2 = zzdjs.zza(bArr3, bArrZza);
            Mac macZzgt = zzdkx.zzhaq.zzgt(str);
            if (i > macZzgt.getMacLength() * 255) {
                throw new GeneralSecurityException("size too large");
            }
            if (bArr == null || bArr.length == 0) {
                macZzgt.init(new SecretKeySpec(new byte[macZzgt.getMacLength()], str));
            } else {
                macZzgt.init(new SecretKeySpec(bArr, str));
            }
            byte[] bArrDoFinal = macZzgt.doFinal(bArrZza2);
            byte[] bArr5 = new byte[i];
            macZzgt.init(new SecretKeySpec(bArrDoFinal, str));
            byte[] bArrDoFinal2 = new byte[0];
            int length = 0;
            while (true) {
                macZzgt.update(bArrDoFinal2);
                macZzgt.update(bArr2);
                macZzgt.update((byte) i3);
                bArrDoFinal2 = macZzgt.doFinal();
                if (bArrDoFinal2.length + length < i) {
                    System.arraycopy(bArrDoFinal2, 0, bArr5, length, bArrDoFinal2.length);
                    length += bArrDoFinal2.length;
                    i3++;
                } else {
                    System.arraycopy(bArrDoFinal2, 0, bArr5, length, i - length);
                    return new zzdkf(bArr3, bArr5);
                }
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
