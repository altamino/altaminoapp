package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzrg extends zzrj {
    private static final int[] zzblb = new int[0];
    private final zzrn zzblc;
    private final AtomicReference<zzrh> zzbld;

    public zzrg() {
        this(null);
    }

    private static int zzf(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    private static boolean zzf(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    private zzrg(zzrn zzrnVar) {
        this.zzblc = null;
        this.zzbld = new AtomicReference<>(new zzrh());
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a6  */
    @Override // com.google.android.gms.internal.ads.zzrj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zzrm[] zza(com.google.android.gms.internal.ads.zzlp[] r36, com.google.android.gms.internal.ads.zzrb[] r37, int[][][] r38) throws com.google.android.gms.internal.ads.zzku {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrg.zza(com.google.android.gms.internal.ads.zzlp[], com.google.android.gms.internal.ads.zzrb[], int[][][]):com.google.android.gms.internal.ads.zzrm[]");
    }

    private static boolean zza(zzlh zzlhVar, String str) {
        return str != null && TextUtils.equals(str, zzsy.zzbg(zzlhVar.zzauc));
    }
}
