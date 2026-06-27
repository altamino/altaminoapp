package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzdkw implements zzdbj {
    private final zzdlk zzhal;
    private final zzdby zzham;
    private final int zzhan;

    public zzdkw(zzdlk zzdlkVar, zzdby zzdbyVar, int i) {
        this.zzhal = zzdlkVar;
        this.zzham = zzdbyVar;
        this.zzhan = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdbj
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrZzo = this.zzhal.zzo(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return zzdjs.zza(bArrZzo, this.zzham.zzk(zzdjs.zza(bArr2, bArrZzo, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))));
    }
}
