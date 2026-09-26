package androidx.media3.common;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class FrameInfo {
    public final int height;
    public final long offsetToAddUs;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static final class Builder {
        private int height;
        private long offsetToAddUs;
        private float pixelWidthHeightRatio;
        private int width;

        public Builder(int i10, int i11) {
            this.width = i10;
            this.height = i11;
            this.pixelWidthHeightRatio = 1.0f;
        }

        public Builder b(float f) {
            this.pixelWidthHeightRatio = f;
            return this;
        }

        public Builder(FrameInfo frameInfo) {
            this.width = frameInfo.width;
            this.height = frameInfo.height;
            this.pixelWidthHeightRatio = frameInfo.pixelWidthHeightRatio;
            this.offsetToAddUs = frameInfo.offsetToAddUs;
        }

        public FrameInfo a() {
            return new FrameInfo(this.width, this.height, this.pixelWidthHeightRatio, this.offsetToAddUs);
        }
    }

    private FrameInfo(int i10, int i11, float f, long j6) {
        Assertions.b(i10 > 0, "width must be positive, but is: " + i10);
        Assertions.b(i11 > 0, "height must be positive, but is: " + i11);
        this.width = i10;
        this.height = i11;
        this.pixelWidthHeightRatio = f;
        this.offsetToAddUs = j6;
    }
}
