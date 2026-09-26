package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class CustomTabsSessionToken {
    private static final String TAG = "CustomTabsSessionToken";

    @Nullable
    private final CustomTabsCallback mCallback;

    @Nullable
    final android.support.customtabs.a mCallbackBinder;

    @Nullable
    private final PendingIntent mSessionId;

    @Nullable
    PendingIntent c() {
        return this.mSessionId;
    }

    static class MockCallback extends android.support.customtabs.a.AbstractBinderC0005a {
        @Override // android.support.customtabs.a
        public void C0(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void E0(Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void W(int i10, int i11, Bundle bundle) {
        }

        @Override // android.support.customtabs.a.AbstractBinderC0005a, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.support.customtabs.a
        public void c0(int i10, Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void c1(@NonNull Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void e1(@NonNull Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void k(int i10, int i11, int i12, int i13, int i14, @NonNull Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public Bundle p(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.a
        public void p1(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void r1(Bundle bundle) {
        }

        @Override // android.support.customtabs.a
        public void s1(int i10, Uri uri, boolean z6, Bundle bundle) {
        }

        MockCallback() {
        }
    }

    private IBinder b() {
        android.support.customtabs.a aVar = this.mCallbackBinder;
        if (aVar != null) {
            return aVar.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    @Nullable
    IBinder a() {
        android.support.customtabs.a aVar = this.mCallbackBinder;
        if (aVar == null) {
            return null;
        }
        return aVar.asBinder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
        PendingIntent pendingIntentC = customTabsSessionToken.c();
        PendingIntent pendingIntent = this.mSessionId;
        if ((pendingIntent == null) != (pendingIntentC == null)) {
            return false;
        }
        return pendingIntent != null ? pendingIntent.equals(pendingIntentC) : b().equals(customTabsSessionToken.b());
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.mSessionId;
        return pendingIntent != null ? pendingIntent.hashCode() : b().hashCode();
    }

    CustomTabsSessionToken(@Nullable android.support.customtabs.a aVar, @Nullable PendingIntent pendingIntent) {
        CustomTabsCallback customTabsCallback;
        if (aVar == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.mCallbackBinder = aVar;
        this.mSessionId = pendingIntent;
        if (aVar == null) {
            customTabsCallback = null;
        } else {
            customTabsCallback = new CustomTabsCallback() { // from class: androidx.browser.customtabs.CustomTabsSessionToken.1
                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void extraCallback(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.C0(str, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                @NonNull
                public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        return CustomTabsSessionToken.this.mCallbackBinder.p(str, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                        return null;
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onActivityLayout(int i10, int i11, int i12, int i13, int i14, @NonNull Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.k(i10, i11, i12, i13, i14, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onActivityResized(int i10, int i11, @NonNull Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.W(i10, i11, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onMessageChannelReady(@Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.r1(bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onMinimized(@NonNull Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.c1(bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onNavigationEvent(int i10, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.c0(i10, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onPostMessage(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.p1(str, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onRelationshipValidationResult(int i10, @NonNull Uri uri, boolean z6, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.s1(i10, uri, z6, bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onUnminimized(@NonNull Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.e1(bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onWarmupCompleted(@NonNull Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.E0(bundle);
                    } catch (RemoteException unused) {
                        Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    }
                }
            };
        }
        this.mCallback = customTabsCallback;
    }
}
