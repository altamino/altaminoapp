package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.annotation.BinderThread;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationManagerCompat;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public abstract class TrustedWebActivityService extends Service {

    @SuppressLint({"ActionValue", "ServiceName"})
    public static final String ACTION_TRUSTED_WEB_ACTIVITY_SERVICE = "android.support.customtabs.trusted.TRUSTED_WEB_ACTIVITY_SERVICE";
    public static final String KEY_SMALL_ICON_BITMAP = "android.support.customtabs.trusted.SMALL_ICON_BITMAP";
    public static final String KEY_SUCCESS = "androidx.browser.trusted.SUCCESS";
    public static final String META_DATA_NAME_SMALL_ICON = "android.support.customtabs.trusted.SMALL_ICON";
    public static final int SMALL_ICON_NOT_SET = -1;
    private NotificationManager mNotificationManager;
    int mVerifiedUid = -1;
    private final android.support.customtabs.trusted.b.a mBinder = new android.support.customtabs.trusted.b.a() { // from class: androidx.browser.trusted.TrustedWebActivityService.1
        private void y1() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            if (trustedWebActivityService.mVerifiedUid == -1) {
                String[] packagesForUid = trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                if (packagesForUid == null) {
                    packagesForUid = new String[0];
                }
                Token tokenLoad = TrustedWebActivityService.this.c().load();
                PackageManager packageManager = TrustedWebActivityService.this.getPackageManager();
                if (tokenLoad != null) {
                    for (String str : packagesForUid) {
                        if (tokenLoad.a(str, packageManager)) {
                            TrustedWebActivityService.this.mVerifiedUid = Binder.getCallingUid();
                            break;
                        }
                    }
                }
            }
            if (TrustedWebActivityService.this.mVerifiedUid != Binder.getCallingUid()) {
                throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
            }
        }

        @Override // android.support.customtabs.trusted.b
        @RequiresPermission
        public Bundle C(Bundle bundle) {
            y1();
            TrustedWebActivityServiceConnection.NotifyNotificationArgs notifyNotificationArgsA = TrustedWebActivityServiceConnection.NotifyNotificationArgs.a(bundle);
            return new TrustedWebActivityServiceConnection.ResultArgs(TrustedWebActivityService.this.j(notifyNotificationArgsA.platformTag, notifyNotificationArgsA.platformId, notifyNotificationArgsA.notification, notifyNotificationArgsA.channelName)).a();
        }

        @Override // android.support.customtabs.trusted.b
        public Bundle S0() {
            y1();
            return new TrustedWebActivityServiceConnection.ActiveNotificationsArgs(TrustedWebActivityService.this.g()).a();
        }

        @Override // android.support.customtabs.trusted.b
        public int j1() {
            y1();
            return TrustedWebActivityService.this.i();
        }

        @Override // android.support.customtabs.trusted.b
        public Bundle k1(Bundle bundle) {
            y1();
            return new TrustedWebActivityServiceConnection.ResultArgs(TrustedWebActivityService.this.d(TrustedWebActivityServiceConnection.NotificationsEnabledArgs.a(bundle).channelName)).a();
        }

        @Override // android.support.customtabs.trusted.b
        public void l1(Bundle bundle) {
            y1();
            TrustedWebActivityServiceConnection.CancelNotificationArgs cancelNotificationArgsA = TrustedWebActivityServiceConnection.CancelNotificationArgs.a(bundle);
            TrustedWebActivityService.this.e(cancelNotificationArgsA.platformTag, cancelNotificationArgsA.platformId);
        }

        @Override // android.support.customtabs.trusted.b
        public Bundle o0(String str, Bundle bundle, IBinder iBinder) {
            y1();
            return TrustedWebActivityService.this.f(str, bundle, TrustedWebActivityCallbackRemote.a(iBinder));
        }

        @Override // android.support.customtabs.trusted.b
        public Bundle t0() {
            y1();
            return TrustedWebActivityService.this.h();
        }
    };

    @NonNull
    @BinderThread
    public abstract TokenStore c();

    @Nullable
    @BinderThread
    public Bundle f(@NonNull String str, @NonNull Bundle bundle, @Nullable TrustedWebActivityCallbackRemote trustedWebActivityCallbackRemote) {
        return null;
    }

    @BinderThread
    public int i() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt(META_DATA_NAME_SMALL_ICON, -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public final IBinder onBind(@Nullable Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@Nullable Intent intent) {
        this.mVerifiedUid = -1;
        return super.onUnbind(intent);
    }

    private static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    private void b() {
        if (this.mNotificationManager == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    @BinderThread
    public boolean d(@NonNull String str) {
        b();
        if (!NotificationManagerCompat.d(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        return NotificationApiHelperForO.b(this.mNotificationManager, a(str));
    }

    @BinderThread
    public void e(@NonNull String str, int i10) {
        b();
        this.mNotificationManager.cancel(str, i10);
    }

    @NonNull
    @BinderThread
    @RestrictTo
    public Parcelable[] g() {
        b();
        return NotificationApiHelperForM.a(this.mNotificationManager);
    }

    @NonNull
    @BinderThread
    public Bundle h() {
        int i10 = i();
        Bundle bundle = new Bundle();
        if (i10 == -1) {
            return bundle;
        }
        bundle.putParcelable(KEY_SMALL_ICON_BITMAP, BitmapFactory.decodeResource(getResources(), i10));
        return bundle;
    }

    @BinderThread
    @RequiresPermission
    public boolean j(@NonNull String str, int i10, @NonNull Notification notification, @NonNull String str2) {
        b();
        if (!NotificationManagerCompat.d(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            String strA = a(str2);
            notification = NotificationApiHelperForO.a(this, this.mNotificationManager, notification, strA, str2);
            if (!NotificationApiHelperForO.b(this.mNotificationManager, strA)) {
                return false;
            }
        }
        this.mNotificationManager.notify(str, i10, notification);
        return true;
    }

    @Override // android.app.Service
    @CallSuper
    @MainThread
    public void onCreate() {
        super.onCreate();
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
    }
}
