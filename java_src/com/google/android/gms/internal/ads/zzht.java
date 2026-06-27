package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;

@TargetApi(19)
/* loaded from: classes2.dex */
final class zzht extends zzhs {
    private final AudioTimestamp zzahj;
    private long zzahk;
    private long zzahl;
    private long zzahm;

    public zzht() {
        super(null);
        this.zzahj = new AudioTimestamp();
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzahk = 0L;
        this.zzahl = 0L;
        this.zzahm = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zzex() {
        boolean timestamp = this.zzagg.getTimestamp(this.zzahj);
        if (timestamp) {
            long j = this.zzahj.framePosition;
            if (this.zzahl > j) {
                this.zzahk++;
            }
            this.zzahl = j;
            this.zzahm = j + (this.zzahk << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final long zzey() {
        return this.zzahj.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final long zzez() {
        return this.zzahm;
    }
}
