package com.google.android.gms.internal.ads;

import java.util.Random;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@zzard
/* loaded from: classes2.dex */
public final class zzyu extends zzzz {
    private final Object lock = new Object();
    private final Random zzcil = new Random();
    private long zzcin;

    public zzyu() {
        zzpi();
    }

    public final void zzpi() {
        synchronized (this.lock) {
            int i = 3;
            long jNextInt = 0;
            while (true) {
                i--;
                if (i <= 0) {
                    break;
                }
                jNextInt = this.zzcil.nextInt() + IjkMediaMeta.AV_CH_WIDE_LEFT;
                if (jNextInt != this.zzcin && jNextInt != 0) {
                    break;
                }
            }
            this.zzcin = jNextInt;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzy
    public final long getValue() {
        return this.zzcin;
    }
}
