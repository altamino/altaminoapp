package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzacd;
import com.google.android.gms.internal.ads.zzard;

@zzard
/* loaded from: classes.dex */
public final class VideoOptions {
    private final boolean zzaax;
    private final boolean zzaay;
    private final boolean zzaaz;

    public VideoOptions(zzacd zzacdVar) {
        this.zzaax = zzacdVar.zzaax;
        this.zzaay = zzacdVar.zzaay;
        this.zzaaz = zzacdVar.zzaaz;
    }

    public static final class Builder {
        private boolean zzaax = true;
        private boolean zzaay = false;
        private boolean zzaaz = false;

        public final Builder setStartMuted(boolean z) {
            this.zzaax = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.zzaay = z;
            return this;
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.zzaaz = z;
            return this;
        }

        public final VideoOptions build() {
            return new VideoOptions(this);
        }
    }

    private VideoOptions(Builder builder) {
        this.zzaax = builder.zzaax;
        this.zzaay = builder.zzaay;
        this.zzaaz = builder.zzaaz;
    }

    public final boolean getStartMuted() {
        return this.zzaax;
    }

    public final boolean getCustomControlsRequested() {
        return this.zzaay;
    }

    public final boolean getClickToExpandRequested() {
        return this.zzaaz;
    }
}
