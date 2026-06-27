package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzkt {
    public static final int CHANNEL_OUT_7POINT1_SURROUND;
    public static final UUID zzarg;
    private static final UUID zzarh;
    private static final UUID zzari;
    private static final UUID zzarj;

    public static long zzdz(long j) {
        return j == C.TIME_UNSET ? C.TIME_UNSET : j / 1000;
    }

    public static long zzea(long j) {
        return j == C.TIME_UNSET ? C.TIME_UNSET : j * 1000;
    }

    static {
        CHANNEL_OUT_7POINT1_SURROUND = zzsy.SDK_INT < 23 ? 1020 : 6396;
        zzarg = new UUID(0L, 0L);
        zzarh = new UUID(1186680826959645954L, -5988876978535335093L);
        zzari = new UUID(-1301668207276963122L, -6645017420763422227L);
        zzarj = new UUID(-7348484286925749626L, -6083546864340672619L);
    }
}
