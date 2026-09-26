package com.google.android.gms.internal.common;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes7.dex */
final class zzl extends zzk {
    private final char zza;

    zzl(char c7) {
        this.zza = c7;
    }

    public final String toString() {
        char[] cArr = {b.STRING_ESC, b.UNICODE_ESC, 0, 0, 0, 0};
        int i10 = this.zza;
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[5 - i11] = "0123456789ABCDEF".charAt(i10 & 15);
            i10 >>= 4;
        }
        return "CharMatcher.is('" + String.copyValueOf(cArr) + "')";
    }

    @Override // com.google.android.gms.internal.common.zzo
    public final boolean zza(char c7) {
        return c7 == this.zza;
    }
}
