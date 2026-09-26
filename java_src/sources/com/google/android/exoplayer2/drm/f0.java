package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.t1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
public interface f0 {
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;

    public static final class a implements d {
        private final f0 exoMediaDrm;

        @Override // com.google.android.exoplayer2.drm.f0.d
        public f0 a(UUID uuid) {
            this.exoMediaDrm.a();
            return this.exoMediaDrm;
        }

        public a(f0 f0Var) {
            this.exoMediaDrm = f0Var;
        }
    }

    public static final class b {
        public static final int REQUEST_TYPE_INITIAL = 0;
        public static final int REQUEST_TYPE_NONE = 3;
        public static final int REQUEST_TYPE_RELEASE = 2;
        public static final int REQUEST_TYPE_RENEWAL = 1;
        public static final int REQUEST_TYPE_UNKNOWN = Integer.MIN_VALUE;
        public static final int REQUEST_TYPE_UPDATE = 4;
        private final byte[] data;
        private final String licenseServerUrl;
        private final int requestType;

        public b(byte[] bArr, String str) {
            this(bArr, str, Integer.MIN_VALUE);
        }

        public byte[] a() {
            return this.data;
        }

        public String b() {
            return this.licenseServerUrl;
        }

        public b(byte[] bArr, String str, int i10) {
            this.data = bArr;
            this.licenseServerUrl = str;
            this.requestType = i10;
        }
    }

    public interface c {
        void a(f0 f0Var, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2);
    }

    public interface d {
        f0 a(UUID uuid);
    }

    void a();

    int b();

    com.google.android.exoplayer2.decoder.b c(byte[] bArr) throws MediaCryptoException;

    void closeSession(byte[] bArr);

    boolean d(byte[] bArr, String str);

    b e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) throws NotProvisionedException;

    void f(@Nullable c cVar);

    void g(byte[] bArr, t1 t1Var);

    e getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    @Nullable
    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    public static final class e {
        private final byte[] data;
        private final String defaultUrl;

        public byte[] a() {
            return this.data;
        }

        public String b() {
            return this.defaultUrl;
        }

        public e(byte[] bArr, String str) {
            this.data = bArr;
            this.defaultUrl = str;
        }
    }
}
