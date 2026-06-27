package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zziv {
    protected volatile int zzanm = -1;

    public abstract zziv zza(zzim zzimVar) throws IOException;

    public void zza(zzin zzinVar) throws IOException {
    }

    protected int zzja() {
        return 0;
    }

    public final int zzly() {
        int iZzja = zzja();
        this.zzanm = iZzja;
        return iZzja;
    }

    public static final byte[] zzb(zziv zzivVar) {
        byte[] bArr = new byte[zzivVar.zzly()];
        try {
            zzin zzinVarZzk = zzin.zzk(bArr, 0, bArr.length);
            zzivVar.zza(zzinVarZzk);
            zzinVarZzk.zzlk();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zziv> T zza(T t, byte[] bArr) throws zziu {
        return (T) zza(t, bArr, 0, bArr.length);
    }

    private static final <T extends zziv> T zza(T t, byte[] bArr, int i, int i2) throws zziu {
        try {
            zzim zzimVarZzj = zzim.zzj(bArr, 0, i2);
            t.zza(zzimVarZzj);
            zzimVarZzj.zzu(0);
            return t;
        } catch (zziu e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public String toString() {
        return zziw.zzc(this);
    }

    @Override // 
    /* renamed from: zzpe, reason: merged with bridge method [inline-methods] */
    public zziv clone() throws CloneNotSupportedException {
        return (zziv) super.clone();
    }
}
