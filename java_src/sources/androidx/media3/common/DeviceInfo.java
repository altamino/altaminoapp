package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceInfo implements Bundleable {
    public static final int PLAYBACK_TYPE_LOCAL = 0;
    public static final int PLAYBACK_TYPE_REMOTE = 1;

    @IntRange
    public final int maxVolume;

    @IntRange
    public final int minVolume;
    public final int playbackType;

    @Nullable
    public final String routingControllerId;
    public static final DeviceInfo UNKNOWN = new Builder(0).e();
    private static final String FIELD_PLAYBACK_TYPE = Util.z0(0);
    private static final String FIELD_MIN_VOLUME = Util.z0(1);
    private static final String FIELD_MAX_VOLUME = Util.z0(2);
    private static final String FIELD_ROUTING_CONTROLLER_ID = Util.z0(3);

    @UnstableApi
    public static final Bundleable.Creator<DeviceInfo> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.j
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return DeviceInfo.b(bundle);
        }
    };

    public static final class Builder {
        private int maxVolume;
        private int minVolume;
        private final int playbackType;

        @Nullable
        private String routingControllerId;

        public Builder f(@IntRange int i10) {
            this.maxVolume = i10;
            return this;
        }

        public Builder g(@IntRange int i10) {
            this.minVolume = i10;
            return this;
        }

        public DeviceInfo e() {
            Assertions.a(this.minVolume <= this.maxVolume);
            return new DeviceInfo(this);
        }

        public Builder h(@Nullable String str) {
            Assertions.a(this.playbackType != 0 || str == null);
            this.routingControllerId = str;
            return this;
        }

        public Builder(int i10) {
            this.playbackType = i10;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackType {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) obj;
        return this.playbackType == deviceInfo.playbackType && this.minVolume == deviceInfo.minVolume && this.maxVolume == deviceInfo.maxVolume && Util.c(this.routingControllerId, deviceInfo.routingControllerId);
    }

    @UnstableApi
    @Deprecated
    public DeviceInfo(int i10, @IntRange int i11, @IntRange int i12) {
        this(new Builder(i10).g(i11).f(i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DeviceInfo b(Bundle bundle) {
        int i10 = bundle.getInt(FIELD_PLAYBACK_TYPE, 0);
        int i11 = bundle.getInt(FIELD_MIN_VOLUME, 0);
        int i12 = bundle.getInt(FIELD_MAX_VOLUME, 0);
        return new Builder(i10).g(i11).f(i12).h(bundle.getString(FIELD_ROUTING_CONTROLLER_ID)).e();
    }

    public int hashCode() {
        int i10 = (((((527 + this.playbackType) * 31) + this.minVolume) * 31) + this.maxVolume) * 31;
        String str = this.routingControllerId;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        int i10 = this.playbackType;
        if (i10 != 0) {
            bundle.putInt(FIELD_PLAYBACK_TYPE, i10);
        }
        int i11 = this.minVolume;
        if (i11 != 0) {
            bundle.putInt(FIELD_MIN_VOLUME, i11);
        }
        int i12 = this.maxVolume;
        if (i12 != 0) {
            bundle.putInt(FIELD_MAX_VOLUME, i12);
        }
        String str = this.routingControllerId;
        if (str != null) {
            bundle.putString(FIELD_ROUTING_CONTROLLER_ID, str);
        }
        return bundle;
    }

    private DeviceInfo(Builder builder) {
        this.playbackType = builder.playbackType;
        this.minVolume = builder.minVolume;
        this.maxVolume = builder.maxVolume;
        this.routingControllerId = builder.routingControllerId;
    }
}
