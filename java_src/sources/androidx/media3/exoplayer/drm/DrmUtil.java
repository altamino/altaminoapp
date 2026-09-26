package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;

    @RequiresApi
    private static final class Api18 {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof DeniedByServerException;
        }

        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return th instanceof NotProvisionedException;
        }

        private Api18() {
        }
    }

    @RequiresApi
    private static final class Api21 {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        public static int b(Throwable th) {
            return Util.X(Util.Y(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }

        private Api21() {
        }
    }

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrmResetException;
        }

        private Api23() {
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    public static int a(Exception exc, int i10) {
        int i11 = Util.SDK_INT;
        if (i11 >= 21 && Api21.a(exc)) {
            return Api21.b(exc);
        }
        if (i11 >= 23 && Api23.a(exc)) {
            return 6006;
        }
        if (i11 >= 18 && Api18.b(exc)) {
            return 6002;
        }
        if (i11 >= 18 && Api18.a(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i10 == 1) {
            return 6006;
        }
        if (i10 == 2) {
            return 6004;
        }
        if (i10 == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }

    private DrmUtil() {
    }
}
