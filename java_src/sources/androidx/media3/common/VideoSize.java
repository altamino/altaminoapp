package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes10.dex */
public final class VideoSize implements Bundleable {
    private static final int DEFAULT_HEIGHT = 0;
    private static final float DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO = 1.0f;
    private static final int DEFAULT_UNAPPLIED_ROTATION_DEGREES = 0;
    private static final int DEFAULT_WIDTH = 0;

    @IntRange
    public final int height;

    @FloatRange
    public final float pixelWidthHeightRatio;

    @IntRange
    public final int unappliedRotationDegrees;

    @IntRange
    public final int width;
    public static final VideoSize UNKNOWN = new VideoSize(0, 0);
    private static final String FIELD_WIDTH = Util.z0(0);
    private static final String FIELD_HEIGHT = Util.z0(1);
    private static final String FIELD_UNAPPLIED_ROTATION_DEGREES = Util.z0(2);
    private static final String FIELD_PIXEL_WIDTH_HEIGHT_RATIO = Util.z0(3);

    @UnstableApi
    public static final Bundleable.Creator<VideoSize> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.m2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return VideoSize.b(bundle);
        }
    };

    @UnstableApi
    public VideoSize(@IntRange int i10, @IntRange int i11) {
        this(i10, i11, 0, 1.0f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoSize)) {
            return false;
        }
        VideoSize videoSize = (VideoSize) obj;
        return this.width == videoSize.width && this.height == videoSize.height && this.unappliedRotationDegrees == videoSize.unappliedRotationDegrees && this.pixelWidthHeightRatio == videoSize.pixelWidthHeightRatio;
    }

    @UnstableApi
    public VideoSize(@IntRange int i10, @IntRange int i11, @IntRange int i12, @FloatRange float f) {
        this.width = i10;
        this.height = i11;
        this.unappliedRotationDegrees = i12;
        this.pixelWidthHeightRatio = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ VideoSize b(Bundle bundle) {
        return new VideoSize(bundle.getInt(FIELD_WIDTH, 0), bundle.getInt(FIELD_HEIGHT, 0), bundle.getInt(FIELD_UNAPPLIED_ROTATION_DEGREES, 0), bundle.getFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, 1.0f));
    }

    public int hashCode() {
        return ((((((217 + this.width) * 31) + this.height) * 31) + this.unappliedRotationDegrees) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_WIDTH, this.width);
        bundle.putInt(FIELD_HEIGHT, this.height);
        bundle.putInt(FIELD_UNAPPLIED_ROTATION_DEGREES, this.unappliedRotationDegrees);
        bundle.putFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, this.pixelWidthHeightRatio);
        return bundle;
    }
}
