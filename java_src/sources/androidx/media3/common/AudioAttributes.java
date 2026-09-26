package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class AudioAttributes implements Bundleable {
    public final int allowedCapturePolicy;

    @Nullable
    private AudioAttributesV21 audioAttributesV21;
    public final int contentType;
    public final int flags;
    public final int spatializationBehavior;
    public final int usage;
    public static final AudioAttributes DEFAULT = new Builder().a();
    private static final String FIELD_CONTENT_TYPE = Util.z0(0);
    private static final String FIELD_FLAGS = Util.z0(1);
    private static final String FIELD_USAGE = Util.z0(2);
    private static final String FIELD_ALLOWED_CAPTURE_POLICY = Util.z0(3);
    private static final String FIELD_SPATIALIZATION_BEHAVIOR = Util.z0(4);

    @UnstableApi
    public static final Bundleable.Creator<AudioAttributes> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.d
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return AudioAttributes.c(bundle);
        }
    };

    @RequiresApi
    public static final class AudioAttributesV21 {
        public final android.media.AudioAttributes audioAttributes;

        private AudioAttributesV21(AudioAttributes audioAttributes) {
            android.media.AudioAttributes.Builder usage = new android.media.AudioAttributes.Builder().setContentType(audioAttributes.contentType).setFlags(audioAttributes.flags).setUsage(audioAttributes.usage);
            int i10 = Util.SDK_INT;
            if (i10 >= 29) {
                Api29.a(usage, audioAttributes.allowedCapturePolicy);
            }
            if (i10 >= 32) {
                Api32.a(usage, audioAttributes.spatializationBehavior);
            }
            this.audioAttributes = usage.build();
        }
    }

    public static final class Builder {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;
        private int allowedCapturePolicy = 1;
        private int spatializationBehavior = 0;

        public Builder b(int i10) {
            this.allowedCapturePolicy = i10;
            return this;
        }

        public Builder c(int i10) {
            this.contentType = i10;
            return this;
        }

        public Builder d(int i10) {
            this.flags = i10;
            return this;
        }

        public Builder e(int i10) {
            this.spatializationBehavior = i10;
            return this;
        }

        public Builder f(int i10) {
            this.usage = i10;
            return this;
        }

        public AudioAttributes a() {
            return new AudioAttributes(this.contentType, this.flags, this.usage, this.allowedCapturePolicy, this.spatializationBehavior);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioAttributes.class != obj.getClass()) {
            return false;
        }
        AudioAttributes audioAttributes = (AudioAttributes) obj;
        return this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage && this.allowedCapturePolicy == audioAttributes.allowedCapturePolicy && this.spatializationBehavior == audioAttributes.spatializationBehavior;
    }

    public int hashCode() {
        return ((((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy) * 31) + this.spatializationBehavior;
    }

    @RequiresApi
    private static final class Api29 {
        private Api29() {
        }

        @DoNotInline
        public static void a(android.media.AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    @RequiresApi
    private static final class Api32 {
        private Api32() {
        }

        @DoNotInline
        public static void a(android.media.AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    private AudioAttributes(int i10, int i11, int i12, int i13, int i14) {
        this.contentType = i10;
        this.flags = i11;
        this.usage = i12;
        this.allowedCapturePolicy = i13;
        this.spatializationBehavior = i14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AudioAttributes c(Bundle bundle) {
        Builder builder = new Builder();
        String str = FIELD_CONTENT_TYPE;
        if (bundle.containsKey(str)) {
            builder.c(bundle.getInt(str));
        }
        String str2 = FIELD_FLAGS;
        if (bundle.containsKey(str2)) {
            builder.d(bundle.getInt(str2));
        }
        String str3 = FIELD_USAGE;
        if (bundle.containsKey(str3)) {
            builder.f(bundle.getInt(str3));
        }
        String str4 = FIELD_ALLOWED_CAPTURE_POLICY;
        if (bundle.containsKey(str4)) {
            builder.b(bundle.getInt(str4));
        }
        String str5 = FIELD_SPATIALIZATION_BEHAVIOR;
        if (bundle.containsKey(str5)) {
            builder.e(bundle.getInt(str5));
        }
        return builder.a();
    }

    @RequiresApi
    public AudioAttributesV21 b() {
        if (this.audioAttributesV21 == null) {
            this.audioAttributesV21 = new AudioAttributesV21();
        }
        return this.audioAttributesV21;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_CONTENT_TYPE, this.contentType);
        bundle.putInt(FIELD_FLAGS, this.flags);
        bundle.putInt(FIELD_USAGE, this.usage);
        bundle.putInt(FIELD_ALLOWED_CAPTURE_POLICY, this.allowedCapturePolicy);
        bundle.putInt(FIELD_SPATIALIZATION_BEHAVIOR, this.spatializationBehavior);
        return bundle;
    }
}
