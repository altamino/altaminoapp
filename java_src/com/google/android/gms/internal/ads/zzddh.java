package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzddh implements zzdbq {
    private final zzdca<zzdbq> zzgqa;

    public zzddh(zzdca<zzdbq> zzdcaVar) {
        this.zzgqa = zzdcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzdjs.zza(this.zzgqa.zzanu().zzanx(), this.zzgqa.zzanu().zzanv().zzc(bArr, bArr2));
    }
}
