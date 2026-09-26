package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class o implements h {
    private static final int FIELD_MAX_VOLUME = 2;
    private static final int FIELD_MIN_VOLUME = 1;
    private static final int FIELD_PLAYBACK_TYPE = 0;
    public static final int PLAYBACK_TYPE_LOCAL = 0;
    public static final int PLAYBACK_TYPE_REMOTE = 1;
    public final int maxVolume;
    public final int minVolume;
    public final int playbackType;
    public static final o UNKNOWN = new o(0, 0, 0);
    public static final h.a<o> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.n
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return o.c(bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o c(Bundle bundle) {
        return new o(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.playbackType == oVar.playbackType && this.minVolume == oVar.minVolume && this.maxVolume == oVar.maxVolume;
    }

    public int hashCode() {
        return ((((527 + this.playbackType) * 31) + this.minVolume) * 31) + this.maxVolume;
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.playbackType);
        bundle.putInt(b(1), this.minVolume);
        bundle.putInt(b(2), this.maxVolume);
        return bundle;
    }

    public o(int i10, int i11, int i12) {
        this.playbackType = i10;
        this.minVolume = i11;
        this.maxVolume = i12;
    }
}
