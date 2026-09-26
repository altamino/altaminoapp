package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface ExoMediaDrm {

    @UnstableApi
    public static final int EVENT_KEY_EXPIRED = 3;

    @UnstableApi
    public static final int EVENT_KEY_REQUIRED = 2;

    @UnstableApi
    public static final int EVENT_PROVISION_REQUIRED = 1;

    @UnstableApi
    public static final int KEY_TYPE_OFFLINE = 2;

    @UnstableApi
    public static final int KEY_TYPE_RELEASE = 3;

    @UnstableApi
    public static final int KEY_TYPE_STREAMING = 1;

    public static final class AppManagedProvider implements Provider {
        private final ExoMediaDrm exoMediaDrm;

        @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.Provider
        public ExoMediaDrm a(UUID uuid) {
            this.exoMediaDrm.a();
            return this.exoMediaDrm;
        }

        public AppManagedProvider(ExoMediaDrm exoMediaDrm) {
            this.exoMediaDrm = exoMediaDrm;
        }
    }

    public static final class KeyRequest {
        public static final int REQUEST_TYPE_INITIAL = 0;
        public static final int REQUEST_TYPE_NONE = 3;
        public static final int REQUEST_TYPE_RELEASE = 2;
        public static final int REQUEST_TYPE_RENEWAL = 1;
        public static final int REQUEST_TYPE_UNKNOWN = Integer.MIN_VALUE;
        public static final int REQUEST_TYPE_UPDATE = 4;
        private final byte[] data;
        private final String licenseServerUrl;
        private final int requestType;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface RequestType {
        }

        public KeyRequest(byte[] bArr, String str) {
            this(bArr, str, Integer.MIN_VALUE);
        }

        public byte[] a() {
            return this.data;
        }

        public String b() {
            return this.licenseServerUrl;
        }

        public KeyRequest(byte[] bArr, String str, int i10) {
            this.data = bArr;
            this.licenseServerUrl = str;
            this.requestType = i10;
        }
    }

    public interface OnEventListener {
        void a(ExoMediaDrm exoMediaDrm, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2);
    }

    public interface OnExpirationUpdateListener {
    }

    public interface OnKeyStatusChangeListener {
    }

    public interface Provider {
        ExoMediaDrm a(UUID uuid);
    }

    void a();

    int b();

    CryptoConfig c(byte[] bArr) throws MediaCryptoException;

    void closeSession(byte[] bArr);

    boolean d(byte[] bArr, String str);

    KeyRequest e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) throws NotProvisionedException;

    void f(byte[] bArr, PlayerId playerId);

    void g(@Nullable OnEventListener onEventListener);

    ProvisionRequest getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    @Nullable
    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    public static final class KeyStatus {
        private final byte[] keyId;
        private final int statusCode;

        public KeyStatus(int i10, byte[] bArr) {
            this.statusCode = i10;
            this.keyId = bArr;
        }
    }

    public static final class ProvisionRequest {
        private final byte[] data;
        private final String defaultUrl;

        public byte[] a() {
            return this.data;
        }

        public String b() {
            return this.defaultUrl;
        }

        public ProvisionRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.defaultUrl = str;
        }
    }
}
