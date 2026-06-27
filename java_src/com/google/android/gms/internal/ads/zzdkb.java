package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;

/* loaded from: classes2.dex */
public final class zzdkb implements zzdbp {
    private static final byte[] zzgpx = new byte[0];
    private final ECPrivateKey zzgyo;
    private final zzdkd zzgyp;
    private final String zzgyq;
    private final byte[] zzgyr;
    private final zzdkv zzgys;
    private final zzdka zzgyt;

    public zzdkb(ECPrivateKey eCPrivateKey, byte[] bArr, String str, zzdkv zzdkvVar, zzdka zzdkaVar) throws GeneralSecurityException {
        this.zzgyo = eCPrivateKey;
        this.zzgyp = new zzdkd(eCPrivateKey);
        this.zzgyr = bArr;
        this.zzgyq = str;
        this.zzgys = zzdkvVar;
        this.zzgyt = zzdkaVar;
    }
}
