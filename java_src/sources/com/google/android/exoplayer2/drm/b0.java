package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class b0 {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;

    @RequiresApi
    private static final class a {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof DeniedByServerException;
        }

        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return th instanceof NotProvisionedException;
        }
    }

    @RequiresApi
    private static final class b {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        public static int b(Throwable th) {
            return com.google.android.exoplayer2.util.o0.P(com.google.android.exoplayer2.util.o0.Q(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    @RequiresApi
    private static final class c {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i10) {
        int i11 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i11 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i11 >= 23 && c.a(exc)) {
            return 6006;
        }
        if (i11 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i11 >= 18 && a.a(exc)) {
            return 6007;
        }
        if (exc instanceof o0) {
            return 6001;
        }
        if (exc instanceof h.e) {
            return 6003;
        }
        if (exc instanceof l0) {
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
}
