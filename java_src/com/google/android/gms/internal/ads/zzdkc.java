package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* loaded from: classes2.dex */
public final class zzdkc implements zzdbq {
    private static final byte[] zzgpx = new byte[0];
    private final String zzgyq;
    private final byte[] zzgyr;
    private final zzdkv zzgys;
    private final zzdka zzgyt;
    private final zzdke zzgyu;

    public zzdkc(ECPublicKey eCPublicKey, byte[] bArr, String str, zzdkv zzdkvVar, zzdka zzdkaVar) throws GeneralSecurityException {
        zzdkr.zza(eCPublicKey);
        this.zzgyu = new zzdke(eCPublicKey);
        this.zzgyr = bArr;
        this.zzgyq = str;
        this.zzgys = zzdkvVar;
        this.zzgyt = zzdkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws IllegalStateException, GeneralSecurityException {
        zzdkf zzdkfVarZza = this.zzgyu.zza(this.zzgyq, this.zzgyr, bArr2, this.zzgyt.zzanz(), this.zzgys);
        byte[] bArrZzc = this.zzgyt.zzm(zzdkfVarZza.zzaux()).zzc(bArr, zzgpx);
        byte[] bArrZzauw = zzdkfVarZza.zzauw();
        return ByteBuffer.allocate(bArrZzauw.length + bArrZzc.length).put(bArrZzauw).put(bArrZzc).array();
    }
}
