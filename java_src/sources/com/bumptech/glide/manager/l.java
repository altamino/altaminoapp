package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class l implements Handler.Callback {
    private static final b DEFAULT_FACTORY = new a();
    private static final String FRAGMENT_INDEX_KEY = "key";

    @VisibleForTesting
    static final String FRAGMENT_TAG = "com.bumptech.glide.manager";
    private static final int ID_REMOVE_FRAGMENT_MANAGER = 1;
    private static final int ID_REMOVE_SUPPORT_FRAGMENT_MANAGER = 2;
    private static final String TAG = "RMRetriever";
    private volatile com.bumptech.glide.j applicationManager;
    private final b factory;
    private final Handler handler;

    @VisibleForTesting
    final Map<FragmentManager, k> pendingRequestManagerFragments = new HashMap();

    @VisibleForTesting
    final Map<androidx.fragment.app.FragmentManager, o> pendingSupportRequestManagerFragments = new HashMap();
    private final ArrayMap<View, Fragment> tempViewToSupportFragment = new ArrayMap<>();
    private final ArrayMap<View, android.app.Fragment> tempViewToFragment = new ArrayMap<>();
    private final Bundle tempBundle = new Bundle();

    class a implements b {
        @Override // com.bumptech.glide.manager.l.b
        @NonNull
        public com.bumptech.glide.j a(@NonNull com.bumptech.glide.b bVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context) {
            return new com.bumptech.glide.j(bVar, hVar, mVar, context);
        }

        a() {
        }
    }

    public interface b {
        @NonNull
        com.bumptech.glide.j a(@NonNull com.bumptech.glide.b bVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context);
    }

    @NonNull
    o k(Context context, androidx.fragment.app.FragmentManager fragmentManager) {
        return l(fragmentManager, null, m(context));
    }

    @Nullable
    private static Activity b(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @NonNull
    private com.bumptech.glide.j h(@NonNull Context context) {
        if (this.applicationManager == null) {
            synchronized (this) {
                try {
                    if (this.applicationManager == null) {
                        this.applicationManager = this.factory.a(com.bumptech.glide.b.c(context.getApplicationContext()), new com.bumptech.glide.manager.b(), new g(), context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.applicationManager;
    }

    @NonNull
    private k j(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z6) {
        k kVar = (k) fragmentManager.findFragmentByTag(FRAGMENT_TAG);
        if (kVar == null && (kVar = this.pendingRequestManagerFragments.get(fragmentManager)) == null) {
            kVar = new k();
            kVar.j(fragment);
            if (z6) {
                kVar.c().d();
            }
            this.pendingRequestManagerFragments.put(fragmentManager, kVar);
            fragmentManager.beginTransaction().add(kVar, FRAGMENT_TAG).commitAllowingStateLoss();
            this.handler.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar;
    }

    @NonNull
    private o l(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z6) {
        o oVar = (o) fragmentManager.m0(FRAGMENT_TAG);
        if (oVar == null && (oVar = this.pendingSupportRequestManagerFragments.get(fragmentManager)) == null) {
            oVar = new o();
            oVar.p(fragment);
            if (z6) {
                oVar.h().d();
            }
            this.pendingSupportRequestManagerFragments.put(fragmentManager, oVar);
            fragmentManager.q().e(oVar, FRAGMENT_TAG).k();
            this.handler.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return oVar;
    }

    @NonNull
    public com.bumptech.glide.j e(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (com.bumptech.glide.util.k.p() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return g((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return d((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return e(contextWrapper.getBaseContext());
                }
            }
        }
        return h(context);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        ComponentCallbacks componentCallbacksRemove;
        Object obj2;
        ComponentCallbacks componentCallbacks;
        int i10 = message.what;
        boolean z6 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                componentCallbacks = null;
                z6 = false;
                obj2 = null;
            } else {
                obj = (androidx.fragment.app.FragmentManager) message.obj;
                componentCallbacksRemove = this.pendingSupportRequestManagerFragments.remove(obj);
            }
            if (z6 && componentCallbacks == null && Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to remove expected request manager fragment, manager: " + obj2);
            }
            return z6;
        }
        obj = (FragmentManager) message.obj;
        componentCallbacksRemove = this.pendingRequestManagerFragments.remove(obj);
        ComponentCallbacks componentCallbacks2 = componentCallbacksRemove;
        obj2 = obj;
        componentCallbacks = componentCallbacks2;
        if (z6) {
            Log.w(TAG, "Failed to remove expected request manager fragment, manager: " + obj2);
        }
        return z6;
    }

    public l(@Nullable b bVar) {
        this.factory = bVar == null ? DEFAULT_FACTORY : bVar;
        this.handler = new Handler(Looper.getMainLooper(), this);
    }

    @TargetApi(17)
    private static void a(@NonNull Activity activity) {
        if (!activity.isDestroyed()) {
        } else {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @NonNull
    @Deprecated
    private com.bumptech.glide.j c(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z6) {
        k kVarJ = j(fragmentManager, fragment, z6);
        com.bumptech.glide.j jVarE = kVarJ.e();
        if (jVarE == null) {
            com.bumptech.glide.j jVarA = this.factory.a(com.bumptech.glide.b.c(context), kVarJ.c(), kVarJ.f(), context);
            kVarJ.k(jVarA);
            return jVarA;
        }
        return jVarE;
    }

    private static boolean m(Context context) {
        Activity activityB = b(context);
        if (activityB != null && activityB.isFinishing()) {
            return false;
        }
        return true;
    }

    @NonNull
    private com.bumptech.glide.j n(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z6) {
        o oVarL = l(fragmentManager, fragment, z6);
        com.bumptech.glide.j jVarJ = oVarL.j();
        if (jVarJ == null) {
            com.bumptech.glide.j jVarA = this.factory.a(com.bumptech.glide.b.c(context), oVarL.h(), oVarL.k(), context);
            oVarL.q(jVarA);
            return jVarA;
        }
        return jVarJ;
    }

    @NonNull
    public com.bumptech.glide.j d(@NonNull Activity activity) {
        if (com.bumptech.glide.util.k.o()) {
            return e(activity.getApplicationContext());
        }
        a(activity);
        return c(activity, activity.getFragmentManager(), null, m(activity));
    }

    @NonNull
    public com.bumptech.glide.j f(@NonNull Fragment fragment) {
        com.bumptech.glide.util.j.e(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (com.bumptech.glide.util.k.o()) {
            return e(fragment.getContext().getApplicationContext());
        }
        return n(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public com.bumptech.glide.j g(@NonNull FragmentActivity fragmentActivity) {
        if (com.bumptech.glide.util.k.o()) {
            return e(fragmentActivity.getApplicationContext());
        }
        a(fragmentActivity);
        return n(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, m(fragmentActivity));
    }

    @NonNull
    @Deprecated
    k i(Activity activity) {
        return j(activity.getFragmentManager(), null, m(activity));
    }
}
