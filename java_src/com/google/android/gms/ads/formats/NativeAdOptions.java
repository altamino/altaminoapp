package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.internal.ads.zzard;

@zzard
/* loaded from: classes.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;
    private final boolean zzbqb;
    private final int zzbqc;
    private final int zzbqd;
    private final boolean zzbqe;
    private final int zzbqf;
    private final VideoOptions zzbqg;
    private final boolean zzbqh;

    public @interface AdChoicesPlacement {
    }

    private NativeAdOptions(Builder builder) {
        this.zzbqb = builder.zzbqb;
        this.zzbqc = builder.zzbqc;
        this.zzbqd = 0;
        this.zzbqe = builder.zzbqe;
        this.zzbqf = builder.zzbqf;
        this.zzbqg = builder.zzbqg;
        this.zzbqh = builder.zzbqh;
    }

    public static final class Builder {
        private VideoOptions zzbqg;
        private boolean zzbqb = false;
        private int zzbqc = -1;
        private int zzbqd = 0;
        private boolean zzbqe = false;
        private int zzbqf = 1;
        private boolean zzbqh = false;

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzbqb = z;
            return this;
        }

        public final Builder setImageOrientation(int i) {
            this.zzbqc = i;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzbqe = z;
            return this;
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.zzbqf = i;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzbqg = videoOptions;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.zzbqh = z;
            return this;
        }

        public final NativeAdOptions build() {
            return new NativeAdOptions(this);
        }
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzbqb;
    }

    public final int getImageOrientation() {
        return this.zzbqc;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzbqe;
    }

    public final int getAdChoicesPlacement() {
        return this.zzbqf;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbqg;
    }

    public final boolean zzkr() {
        return this.zzbqh;
    }
}
