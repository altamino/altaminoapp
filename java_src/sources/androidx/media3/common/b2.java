package androidx.media3.common;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class b2 {
    static {
        SimpleBasePlayer.PositionSupplier positionSupplier = SimpleBasePlayer.PositionSupplier.ZERO;
    }

    public static /* synthetic */ long c(long j6) {
        return j6;
    }

    public static SimpleBasePlayer.PositionSupplier a(final long j6) {
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.z1
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return b2.c(j6);
            }
        };
    }

    public static SimpleBasePlayer.PositionSupplier b(final long j6, final float f) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.a2
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return b2.d(j6, jElapsedRealtime, f);
            }
        };
    }

    public static /* synthetic */ long d(long j6, long j10, float f) {
        return j6 + ((long) ((SystemClock.elapsedRealtime() - j10) * f));
    }
}
