package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.Bundleable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaPeriodId;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes8.dex */
public final class ExoPlaybackException extends PlaybackException {

    @UnstableApi
    public static final int TYPE_REMOTE = 3;

    @UnstableApi
    public static final int TYPE_RENDERER = 1;

    @UnstableApi
    public static final int TYPE_SOURCE = 0;

    @UnstableApi
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @Nullable
    @UnstableApi
    public final MediaPeriodId mediaPeriodId;

    @Nullable
    @UnstableApi
    public final Format rendererFormat;

    @UnstableApi
    public final int rendererFormatSupport;

    @UnstableApi
    public final int rendererIndex;

    @Nullable
    @UnstableApi
    public final String rendererName;

    @UnstableApi
    public final int type;

    @UnstableApi
    public static final Bundleable.Creator<ExoPlaybackException> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.exoplayer.k
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return ExoPlaybackException.f(bundle);
        }
    };
    private static final String FIELD_TYPE = Util.z0(1001);
    private static final String FIELD_RENDERER_NAME = Util.z0(1002);
    private static final String FIELD_RENDERER_INDEX = Util.z0(1003);
    private static final String FIELD_RENDERER_FORMAT = Util.z0(1004);
    private static final String FIELD_RENDERER_FORMAT_SUPPORT = Util.z0(1005);
    private static final String FIELD_IS_RECOVERABLE = Util.z0(1006);

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface Type {
    }

    private ExoPlaybackException(int i10, Throwable th, int i11) {
        this(i10, th, null, i11, null, -1, null, 4, false);
    }

    public static /* synthetic */ ExoPlaybackException f(Bundle bundle) {
        return new ExoPlaybackException(bundle);
    }

    private ExoPlaybackException(int i10, @Nullable Throwable th, @Nullable String str, int i11, @Nullable String str2, int i12, @Nullable Format format, int i13, boolean z6) {
        this(l(i10, str, str2, i12, format, i13), th, i11, i10, str2, i12, format, i13, null, SystemClock.elapsedRealtime(), z6);
    }

    @UnstableApi
    public static ExoPlaybackException h(Throwable th, String str, int i10, @Nullable Format format, int i11, boolean z6, int i12) {
        return new ExoPlaybackException(1, th, null, i12, str, i10, format, format == null ? 4 : i11, z6);
    }

    @UnstableApi
    public static ExoPlaybackException i(IOException iOException, int i10) {
        return new ExoPlaybackException(0, iOException, i10);
    }

    @UnstableApi
    @Deprecated
    public static ExoPlaybackException j(RuntimeException runtimeException) {
        return k(runtimeException, 1000);
    }

    @UnstableApi
    public static ExoPlaybackException k(RuntimeException runtimeException, int i10) {
        return new ExoPlaybackException(2, runtimeException, i10);
    }

    private static String l(int i10, @Nullable String str, @Nullable String str2, int i11, @Nullable Format format, int i12) {
        String str3;
        if (i10 == 0) {
            str3 = "Source error";
        } else if (i10 != 1) {
            str3 = i10 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i11 + ", format=" + format + ", format_supported=" + Util.Z(i12);
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + ": " + str;
    }

    @CheckResult
    ExoPlaybackException g(@Nullable MediaPeriodId mediaPeriodId) {
        return new ExoPlaybackException((String) Util.j(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, mediaPeriodId, this.timestampMs, this.isRecoverable);
    }

    @Override // androidx.media3.common.PlaybackException, androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(FIELD_TYPE, this.type);
        bundle.putString(FIELD_RENDERER_NAME, this.rendererName);
        bundle.putInt(FIELD_RENDERER_INDEX, this.rendererIndex);
        Format format = this.rendererFormat;
        if (format != null) {
            bundle.putBundle(FIELD_RENDERER_FORMAT, format.toBundle());
        }
        bundle.putInt(FIELD_RENDERER_FORMAT_SUPPORT, this.rendererFormatSupport);
        bundle.putBoolean(FIELD_IS_RECOVERABLE, this.isRecoverable);
        return bundle;
    }

    private ExoPlaybackException(Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(FIELD_TYPE, 2);
        this.rendererName = bundle.getString(FIELD_RENDERER_NAME);
        this.rendererIndex = bundle.getInt(FIELD_RENDERER_INDEX, -1);
        Bundle bundle2 = bundle.getBundle(FIELD_RENDERER_FORMAT);
        this.rendererFormat = bundle2 == null ? null : (Format) Format.CREATOR.a(bundle2);
        this.rendererFormatSupport = bundle.getInt(FIELD_RENDERER_FORMAT_SUPPORT, 4);
        this.isRecoverable = bundle.getBoolean(FIELD_IS_RECOVERABLE, false);
        this.mediaPeriodId = null;
    }

    private ExoPlaybackException(String str, @Nullable Throwable th, int i10, int i11, @Nullable String str2, int i12, @Nullable Format format, int i13, @Nullable MediaPeriodId mediaPeriodId, long j6, boolean z6) {
        super(str, th, i10, j6);
        Assertions.a(!z6 || i11 == 1);
        Assertions.a(th != null || i11 == 3);
        this.type = i11;
        this.rendererName = str2;
        this.rendererIndex = i12;
        this.rendererFormat = format;
        this.rendererFormatSupport = i13;
        this.mediaPeriodId = mediaPeriodId;
        this.isRecoverable = z6;
    }
}
