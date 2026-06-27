package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzdcs implements zzdbj {
    private static final byte[] zzgpx = new byte[0];
    private final zzdgw zzgpy;
    private final zzdbj zzgpz;

    public zzdcs(zzdgw zzdgwVar, zzdbj zzdbjVar) {
        this.zzgpy = zzdgwVar;
        this.zzgpz = zzdbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbj
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] byteArray = zzdcf.zzb(this.zzgpy).toByteArray();
        byte[] bArrZzc = this.zzgpz.zzc(byteArray, zzgpx);
        byte[] bArrZzc2 = ((zzdbj) zzdcf.zza(this.zzgpy.zzart(), byteArray, zzdbj.class)).zzc(bArr, bArr2);
        return ByteBuffer.allocate(bArrZzc.length + 4 + bArrZzc2.length).putInt(bArrZzc.length).put(bArrZzc).put(bArrZzc2).array();
    }
}
