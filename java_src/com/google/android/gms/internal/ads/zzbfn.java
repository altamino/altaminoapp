package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
final class zzbfn extends zzay {
    static final zzbfn zzeho = new zzbfn();

    zzbfn() {
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final zzbd zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzbf() : "mvhd".equals(str) ? new zzbg() : new zzbh(str);
    }
}
