package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* loaded from: classes2.dex */
public final class zzdll implements zzdby {
    private Mac zzhbh;
    private final int zzhbi;
    private final String zzhbj;
    private final Key zzhbk;

    public zzdll(String str, Key key, int i) throws GeneralSecurityException {
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        char c = 65535;
        int iHashCode = str.hashCode();
        if (iHashCode != -1823053428) {
            if (iHashCode != 392315118) {
                if (iHashCode == 392317873 && str.equals("HMACSHA512")) {
                    c = 2;
                }
            } else if (str.equals("HMACSHA256")) {
                c = 1;
            }
        } else if (str.equals("HMACSHA1")) {
            c = 0;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    String strValueOf = String.valueOf(str);
                    throw new NoSuchAlgorithmException(strValueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(strValueOf) : new String("unknown Hmac algorithm: "));
                }
                if (i > 64) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
            } else if (i > 32) {
                throw new InvalidAlgorithmParameterException("tag size too big");
            }
        } else if (i > 20) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        this.zzhbj = str;
        this.zzhbi = i;
        this.zzhbk = key;
        this.zzhbh = zzdkx.zzhaq.zzgt(str);
        this.zzhbh.init(key);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final byte[] zzk(byte[] bArr) throws IllegalStateException, GeneralSecurityException {
        Mac macZzgt;
        try {
            macZzgt = (Mac) this.zzhbh.clone();
        } catch (CloneNotSupportedException unused) {
            macZzgt = zzdkx.zzhaq.zzgt(this.zzhbj);
            macZzgt.init(this.zzhbk);
        }
        macZzgt.update(bArr);
        byte[] bArr2 = new byte[this.zzhbi];
        System.arraycopy(macZzgt.doFinal(), 0, bArr2, 0, this.zzhbi);
        return bArr2;
    }
}
