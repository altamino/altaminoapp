package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public class zzdrw {
    protected volatile int zzhnx = -1;

    public void zza(zzdrp zzdrpVar) throws IOException {
    }

    protected int zzor() {
        return 0;
    }

    public final int zzaxj() {
        int iZzor = zzor();
        this.zzhnx = iZzor;
        return iZzor;
    }

    public static final byte[] zza(zzdrw zzdrwVar) {
        byte[] bArr = new byte[zzdrwVar.zzaxj()];
        try {
            zzdrp zzdrpVarZzp = zzdrp.zzp(bArr, 0, bArr.length);
            zzdrwVar.zza(zzdrpVarZzp);
            zzdrpVarZzp.zzawv();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public String toString() {
        return zzdrx.zzb(this);
    }

    @Override // 
    /* renamed from: zzbal, reason: merged with bridge method [inline-methods] */
    public zzdrw clone() throws CloneNotSupportedException {
        return (zzdrw) super.clone();
    }
}
