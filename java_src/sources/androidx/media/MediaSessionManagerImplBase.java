package androidx.media;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: loaded from: classes10.dex */
class MediaSessionManagerImplBase implements MediaSessionManager.MediaSessionManagerImpl {
    private static final boolean DEBUG = MediaSessionManager.DEBUG;
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final String PERMISSION_MEDIA_CONTENT_CONTROL = "android.permission.MEDIA_CONTENT_CONTROL";
    private static final String PERMISSION_STATUS_BAR_SERVICE = "android.permission.STATUS_BAR_SERVICE";
    private static final String TAG = "MediaSessionManager";
    ContentResolver mContentResolver;
    Context mContext;

    static class RemoteUserInfoImplBase implements MediaSessionManager.RemoteUserInfoImpl {
        private String mPackageName;
        private int mPid;
        private int mUid;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplBase)) {
                return false;
            }
            RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
            if (this.mPid < 0 || remoteUserInfoImplBase.mPid < 0) {
                return TextUtils.equals(this.mPackageName, remoteUserInfoImplBase.mPackageName) && this.mUid == remoteUserInfoImplBase.mUid;
            }
            return TextUtils.equals(this.mPackageName, remoteUserInfoImplBase.mPackageName) && this.mPid == remoteUserInfoImplBase.mPid && this.mUid == remoteUserInfoImplBase.mUid;
        }

        public int hashCode() {
            return ObjectsCompat.b(this.mPackageName, Integer.valueOf(this.mUid));
        }

        RemoteUserInfoImplBase(String str, int i10, int i11) {
            this.mPackageName = str;
            this.mPid = i10;
            this.mUid = i11;
        }
    }
}
