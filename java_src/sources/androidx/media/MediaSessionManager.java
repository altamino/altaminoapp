package androidx.media;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes9.dex */
public final class MediaSessionManager {
    private static volatile MediaSessionManager sSessionManager;
    MediaSessionManagerImpl mImpl;
    static final String TAG = "MediaSessionManager";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final Object sLock = new Object();

    interface MediaSessionManagerImpl {
    }

    public static final class RemoteUserInfo {
        public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";

        @RestrictTo
        public static final int UNKNOWN_PID = -1;

        @RestrictTo
        public static final int UNKNOWN_UID = -1;
        RemoteUserInfoImpl mImpl;

        public RemoteUserInfo(@NonNull String str, int i10, int i11) {
            if (str == null) {
                throw new NullPointerException("package shouldn't be null");
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            if (Build.VERSION.SDK_INT >= 28) {
                this.mImpl = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(str, i10, i11);
            } else {
                this.mImpl = new MediaSessionManagerImplBase.RemoteUserInfoImplBase(str, i10, i11);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RemoteUserInfo) {
                return this.mImpl.equals(((RemoteUserInfo) obj).mImpl);
            }
            return false;
        }

        public int hashCode() {
            return this.mImpl.hashCode();
        }

        @RequiresApi
        @RestrictTo
        public RemoteUserInfo(android.media.session.MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String strA = MediaSessionManagerImplApi28.RemoteUserInfoImplApi28.a(remoteUserInfo);
            if (strA != null) {
                if (!TextUtils.isEmpty(strA)) {
                    this.mImpl = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(remoteUserInfo);
                    return;
                }
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            throw new NullPointerException("package shouldn't be null");
        }
    }

    interface RemoteUserInfoImpl {
    }
}
