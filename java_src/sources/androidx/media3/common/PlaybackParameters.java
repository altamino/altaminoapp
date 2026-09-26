package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes11.dex */
public final class PlaybackParameters implements Bundleable {
    public final float pitch;
    private final int scaledUsPerMs;
    public final float speed;
    public static final PlaybackParameters DEFAULT = new PlaybackParameters(1.0f);
    private static final String FIELD_SPEED = Util.z0(0);
    private static final String FIELD_PITCH = Util.z0(1);

    @UnstableApi
    public static final Bundleable.Creator<PlaybackParameters> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.a0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return PlaybackParameters.c(bundle);
        }
    };

    public PlaybackParameters(@FloatRange float f) {
        this(f, 1.0f);
    }

    @UnstableApi
    public long b(long j6) {
        return j6 * ((long) this.scaledUsPerMs);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PlaybackParameters.class != obj.getClass()) {
            return false;
        }
        PlaybackParameters playbackParameters = (PlaybackParameters) obj;
        return this.speed == playbackParameters.speed && this.pitch == playbackParameters.pitch;
    }

    public String toString() {
        return Util.D("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.speed), Float.valueOf(this.pitch));
    }

    public PlaybackParameters(@FloatRange float f, @FloatRange float f6) {
        Assertions.a(f > 0.0f);
        Assertions.a(f6 > 0.0f);
        this.speed = f;
        this.pitch = f6;
        this.scaledUsPerMs = Math.round(f * 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PlaybackParameters c(Bundle bundle) {
        return new PlaybackParameters(bundle.getFloat(FIELD_SPEED, 1.0f), bundle.getFloat(FIELD_PITCH, 1.0f));
    }

    @CheckResult
    public PlaybackParameters d(@FloatRange float f) {
        return new PlaybackParameters(f, this.pitch);
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.speed)) * 31) + Float.floatToRawIntBits(this.pitch);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(FIELD_SPEED, this.speed);
        bundle.putFloat(FIELD_PITCH, this.pitch);
        return bundle;
    }
}
