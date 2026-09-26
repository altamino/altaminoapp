package androidx.media;

import android.media.VolumeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    /* JADX INFO: renamed from: androidx.media.VolumeProviderCompat$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 extends VolumeProvider {
        final /* synthetic */ VolumeProviderCompat this$0;

        @Override // android.media.VolumeProvider
        public void onAdjustVolume(int i10) {
            this.this$0.a(i10);
        }

        @Override // android.media.VolumeProvider
        public void onSetVolumeTo(int i10) {
            this.this$0.b(i10);
        }
    }

    /* JADX INFO: renamed from: androidx.media.VolumeProviderCompat$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass2 extends VolumeProvider {
        final /* synthetic */ VolumeProviderCompat this$0;

        @Override // android.media.VolumeProvider
        public void onAdjustVolume(int i10) {
            this.this$0.a(i10);
        }

        @Override // android.media.VolumeProvider
        public void onSetVolumeTo(int i10) {
            this.this$0.b(i10);
        }
    }

    public static abstract class Callback {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i10, int i11, int i12) {
        this(i10, i11, i12, null);
    }

    public void a(int i10) {
    }

    public void b(int i10) {
    }

    @RequiresApi
    private static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(VolumeProvider volumeProvider, int i10) {
            volumeProvider.setCurrentVolume(i10);
        }
    }

    @RestrictTo
    public VolumeProviderCompat(int i10, int i11, int i12, @Nullable String str) {
        this.mControlType = i10;
        this.mMaxVolume = i11;
        this.mCurrentVolume = i12;
        this.mControlId = str;
    }
}
