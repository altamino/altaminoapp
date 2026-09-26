package androidx.browser.trusted;

import android.app.Notification;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TrustedWebActivityServiceConnection {
    private static final String KEY_ACTIVE_NOTIFICATIONS = "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS";
    private static final String KEY_CHANNEL_NAME = "android.support.customtabs.trusted.CHANNEL_NAME";
    private static final String KEY_NOTIFICATION = "android.support.customtabs.trusted.NOTIFICATION";
    private static final String KEY_NOTIFICATION_SUCCESS = "android.support.customtabs.trusted.NOTIFICATION_SUCCESS";
    private static final String KEY_PLATFORM_ID = "android.support.customtabs.trusted.PLATFORM_ID";
    private static final String KEY_PLATFORM_TAG = "android.support.customtabs.trusted.PLATFORM_TAG";
    private final ComponentName mComponentName;
    private final android.support.customtabs.trusted.b mService;

    /* JADX INFO: renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 extends android.support.customtabs.trusted.a.AbstractBinderC0011a {
        final /* synthetic */ TrustedWebActivityCallback val$callback;

        @Override // android.support.customtabs.trusted.a
        public void q1(String str, Bundle bundle) throws RemoteException {
            this.val$callback.a(str, bundle);
        }
    }

    static class ActiveNotificationsArgs {
        public final Parcelable[] notifications;

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray(TrustedWebActivityServiceConnection.KEY_ACTIVE_NOTIFICATIONS, this.notifications);
            return bundle;
        }

        ActiveNotificationsArgs(Parcelable[] parcelableArr) {
            this.notifications = parcelableArr;
        }
    }

    static class CancelNotificationArgs {
        public final int platformId;
        public final String platformTag;

        public static CancelNotificationArgs a(Bundle bundle) {
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_PLATFORM_TAG);
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_PLATFORM_ID);
            return new CancelNotificationArgs(bundle.getString(TrustedWebActivityServiceConnection.KEY_PLATFORM_TAG), bundle.getInt(TrustedWebActivityServiceConnection.KEY_PLATFORM_ID));
        }

        CancelNotificationArgs(String str, int i10) {
            this.platformTag = str;
            this.platformId = i10;
        }
    }

    static class NotificationsEnabledArgs {
        public final String channelName;

        public static NotificationsEnabledArgs a(Bundle bundle) {
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_CHANNEL_NAME);
            return new NotificationsEnabledArgs(bundle.getString(TrustedWebActivityServiceConnection.KEY_CHANNEL_NAME));
        }

        NotificationsEnabledArgs(String str) {
            this.channelName = str;
        }
    }

    static class NotifyNotificationArgs {
        public final String channelName;
        public final Notification notification;
        public final int platformId;
        public final String platformTag;

        public static NotifyNotificationArgs a(Bundle bundle) {
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_PLATFORM_TAG);
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_PLATFORM_ID);
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_NOTIFICATION);
            TrustedWebActivityServiceConnection.a(bundle, TrustedWebActivityServiceConnection.KEY_CHANNEL_NAME);
            return new NotifyNotificationArgs(bundle.getString(TrustedWebActivityServiceConnection.KEY_PLATFORM_TAG), bundle.getInt(TrustedWebActivityServiceConnection.KEY_PLATFORM_ID), (Notification) bundle.getParcelable(TrustedWebActivityServiceConnection.KEY_NOTIFICATION), bundle.getString(TrustedWebActivityServiceConnection.KEY_CHANNEL_NAME));
        }

        NotifyNotificationArgs(String str, int i10, Notification notification, String str2) {
            this.platformTag = str;
            this.platformId = i10;
            this.notification = notification;
            this.channelName = str2;
        }
    }

    static class ResultArgs {
        public final boolean success;

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean(TrustedWebActivityServiceConnection.KEY_NOTIFICATION_SUCCESS, this.success);
            return bundle;
        }

        ResultArgs(boolean z6) {
            this.success = z6;
        }
    }

    TrustedWebActivityServiceConnection(@NonNull android.support.customtabs.trusted.b bVar, @NonNull ComponentName componentName) {
        this.mService = bVar;
        this.mComponentName = componentName;
    }

    static void a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain " + str);
    }
}
