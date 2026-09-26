package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public final class CustomTabsSession {
    private static final String TAG = "CustomTabsSession";
    static final String TARGET_ORIGIN_KEY = "target_origin";
    private final android.support.customtabs.a mCallback;
    private final ComponentName mComponentName;

    @Nullable
    private final PendingIntent mId;
    private final Object mLock = new Object();
    private final android.support.customtabs.b mService;

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsSession$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    class AnonymousClass1 extends android.support.customtabs.c.a {
        private final Handler mHandler;
        final /* synthetic */ CustomTabsSession this$0;
        final /* synthetic */ EngagementSignalsCallback val$callback;

        @Override // android.support.customtabs.c
        public void b(final boolean z6, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.c
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.b(z6, bundle);
                }
            });
        }

        @Override // android.support.customtabs.c
        public void c(final boolean z6, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.b
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.c(z6, bundle);
                }
            });
        }

        @Override // android.support.customtabs.c
        public void d(final int i10, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.d
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.d(i10, bundle);
                }
            });
        }
    }

    @RestrictTo
    public static class PendingSession {

        @Nullable
        private final CustomTabsCallback mCallback;

        @Nullable
        private final PendingIntent mId;
    }

    ComponentName e() {
        return this.mComponentName;
    }

    @Nullable
    PendingIntent f() {
        return this.mId;
    }

    public boolean k(int i10, @NonNull Uri uri, @Nullable Bundle bundle) {
        if (i10 >= 1 && i10 <= 2) {
            try {
                return this.mService.i(this.mCallback, i10, uri, b(bundle));
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsSession$2, reason: invalid class name */
    class AnonymousClass2 extends android.support.customtabs.c.a {
        private final Executor mExecutor;
        final /* synthetic */ CustomTabsSession this$0;
        final /* synthetic */ EngagementSignalsCallback val$callback;
        final /* synthetic */ Executor val$executor;

        @Override // android.support.customtabs.c
        public void b(final boolean z6, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.b(z6, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.customtabs.c
        public void c(final boolean z6, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.c(z6, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.customtabs.c
        public void d(final int i10, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.d(i10, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    static class MockSession extends android.support.customtabs.b.a {
        @Override // android.support.customtabs.b
        public boolean A(android.support.customtabs.a aVar, IBinder iBinder, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean A0(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean D(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean Q(android.support.customtabs.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean V(long j6) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public int X(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // android.support.customtabs.b
        public boolean a0(android.support.customtabs.a aVar) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean i(android.support.customtabs.a aVar, int i10, Uri uri, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public Bundle l0(String str, Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.b
        public boolean m(android.support.customtabs.a aVar, Uri uri, int i10, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean o1(android.support.customtabs.a aVar, Uri uri) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean t1(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // android.support.customtabs.b
        public boolean z0(android.support.customtabs.a aVar, Uri uri, Bundle bundle) throws RemoteException {
            return false;
        }

        MockSession() {
        }
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.mId;
        if (pendingIntent != null) {
            bundle.putParcelable(CustomTabsIntent.EXTRA_SESSION_ID, pendingIntent);
        }
    }

    private Bundle b(@Nullable Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    @Nullable
    private Bundle c(@Nullable Uri uri) {
        Bundle bundle = new Bundle();
        if (uri != null) {
            bundle.putParcelable(TARGET_ORIGIN_KEY, uri);
        }
        if (this.mId != null) {
            a(bundle);
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    IBinder d() {
        return this.mCallback.asBinder();
    }

    public boolean i(@NonNull Uri uri) {
        return j(uri, null, new Bundle());
    }

    CustomTabsSession(android.support.customtabs.b bVar, android.support.customtabs.a aVar, ComponentName componentName, @Nullable PendingIntent pendingIntent) {
        this.mService = bVar;
        this.mCallback = aVar;
        this.mComponentName = componentName;
        this.mId = pendingIntent;
    }

    public boolean g(@Nullable Uri uri, @Nullable Bundle bundle, @Nullable List<Bundle> list) {
        try {
            return this.mService.Q(this.mCallback, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int h(@NonNull String str, @Nullable Bundle bundle) {
        int iX;
        Bundle bundleB = b(bundle);
        synchronized (this.mLock) {
            try {
                try {
                    iX = this.mService.X(this.mCallback, str, bundleB);
                } catch (RemoteException unused) {
                    return -2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iX;
    }

    public boolean j(@NonNull Uri uri, @Nullable Uri uri2, @NonNull Bundle bundle) {
        try {
            Bundle bundleC = c(uri2);
            if (bundleC != null) {
                bundle.putAll(bundleC);
                return this.mService.z0(this.mCallback, uri, bundle);
            }
            return this.mService.o1(this.mCallback, uri);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
