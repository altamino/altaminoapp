package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class z2 extends Exception implements h {
    public static final h.a<z2> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.y2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return new z2(bundle);
        }
    };
    public static final int CUSTOM_ERROR_CODE_BASE = 1000000;
    public static final int ERROR_CODE_AUDIO_TRACK_INIT_FAILED = 5001;
    public static final int ERROR_CODE_AUDIO_TRACK_WRITE_FAILED = 5002;
    public static final int ERROR_CODE_BEHIND_LIVE_WINDOW = 1002;
    public static final int ERROR_CODE_DECODER_INIT_FAILED = 4001;
    public static final int ERROR_CODE_DECODER_QUERY_FAILED = 4002;
    public static final int ERROR_CODE_DECODING_FAILED = 4003;
    public static final int ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES = 4004;
    public static final int ERROR_CODE_DECODING_FORMAT_UNSUPPORTED = 4005;
    public static final int ERROR_CODE_DRM_CONTENT_ERROR = 6003;
    public static final int ERROR_CODE_DRM_DEVICE_REVOKED = 6007;
    public static final int ERROR_CODE_DRM_DISALLOWED_OPERATION = 6005;
    public static final int ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED = 6004;
    public static final int ERROR_CODE_DRM_LICENSE_EXPIRED = 6008;
    public static final int ERROR_CODE_DRM_PROVISIONING_FAILED = 6002;
    public static final int ERROR_CODE_DRM_SCHEME_UNSUPPORTED = 6001;
    public static final int ERROR_CODE_DRM_SYSTEM_ERROR = 6006;
    public static final int ERROR_CODE_DRM_UNSPECIFIED = 6000;
    public static final int ERROR_CODE_FAILED_RUNTIME_CHECK = 1004;
    public static final int ERROR_CODE_IO_BAD_HTTP_STATUS = 2004;
    public static final int ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED = 2007;
    public static final int ERROR_CODE_IO_FILE_NOT_FOUND = 2005;
    public static final int ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE = 2003;
    public static final int ERROR_CODE_IO_NETWORK_CONNECTION_FAILED = 2001;
    public static final int ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT = 2002;
    public static final int ERROR_CODE_IO_NO_PERMISSION = 2006;
    public static final int ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE = 2008;
    public static final int ERROR_CODE_IO_UNSPECIFIED = 2000;
    public static final int ERROR_CODE_PARSING_CONTAINER_MALFORMED = 3001;
    public static final int ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED = 3003;
    public static final int ERROR_CODE_PARSING_MANIFEST_MALFORMED = 3002;
    public static final int ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED = 3004;
    public static final int ERROR_CODE_REMOTE_ERROR = 1001;
    public static final int ERROR_CODE_TIMEOUT = 1003;
    public static final int ERROR_CODE_UNSPECIFIED = 1000;
    protected static final int FIELD_CUSTOM_ID_BASE = 1000;
    private static final int FIELD_INT_ERROR_CODE = 0;
    private static final int FIELD_LONG_TIMESTAMP_MS = 1;
    private static final int FIELD_STRING_CAUSE_CLASS_NAME = 3;
    private static final int FIELD_STRING_CAUSE_MESSAGE = 4;
    private static final int FIELD_STRING_MESSAGE = 2;
    public final int errorCode;
    public final long timestampMs;

    public z2(@Nullable String str, @Nullable Throwable th, int i10) {
        this(str, th, i10, com.google.android.exoplayer2.util.d.DEFAULT.elapsedRealtime());
    }

    private static Throwable b(Class<?> cls, @Nullable String str) throws Exception {
        return (Throwable) cls.getConstructor(String.class).newInstance(str);
    }

    @Nullable
    private static Throwable c(Bundle bundle) {
        String string = bundle.getString(d(3));
        String string2 = bundle.getString(d(4));
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(string, true, z2.class.getClassLoader());
            Throwable thB = Throwable.class.isAssignableFrom(cls) ? b(cls, string2) : null;
            if (thB != null) {
                return thB;
            }
        } catch (Throwable unused) {
        }
        return a(string2);
    }

    protected z2(Bundle bundle) {
        this(bundle.getString(d(2)), c(bundle), bundle.getInt(d(0), 1000), bundle.getLong(d(1), SystemClock.elapsedRealtime()));
    }

    private static RemoteException a(@Nullable String str) {
        return new RemoteException(str);
    }

    protected static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @CallSuper
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.errorCode);
        bundle.putLong(d(1), this.timestampMs);
        bundle.putString(d(2), getMessage());
        Throwable cause = getCause();
        if (cause != null) {
            bundle.putString(d(3), cause.getClass().getName());
            bundle.putString(d(4), cause.getMessage());
        }
        return bundle;
    }

    protected z2(@Nullable String str, @Nullable Throwable th, int i10, long j6) {
        super(str, th);
        this.errorCode = i10;
        this.timestampMs = j6;
    }
}
