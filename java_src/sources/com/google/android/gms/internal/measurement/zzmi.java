package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
abstract class zzmi {
    zzmi() {
    }

    abstract int zza(int i10, byte[] bArr, int i11, int i12);

    abstract int zza(CharSequence charSequence, byte[] bArr, int i10, int i11);

    abstract String zza(byte[] bArr, int i10, int i11) throws zzji;

    final boolean zzb(byte[] bArr, int i10, int i11) {
        return zza(0, bArr, i10, i11) == 0;
    }
}
