package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.p;
import com.google.firebase.components.y;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.b0;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    @NonNull
    public static final String DEFAULT_APP_NAME = "[DEFAULT]";
    private static final String LOG_TAG = "FirebaseApp";
    private final Context applicationContext;
    private final p componentRuntime;
    private final y<s4.a> dataCollectionConfigStorage;
    private final o4.b<m4.f> defaultHeartBeatController;
    private final String name;
    private final n options;
    private static final Object LOCK = new Object();

    @GuardedBy
    static final Map<String, f> INSTANCES = new ArrayMap();
    private final AtomicBoolean automaticResourceManagementEnabled = new AtomicBoolean(false);
    private final AtomicBoolean deleted = new AtomicBoolean();
    private final List<a> backgroundStateChangeListeners = new CopyOnWriteArrayList();
    private final List<g> lifecycleListeners = new CopyOnWriteArrayList();

    @KeepForSdk
    public interface a {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z6);
    }

    @TargetApi(24)
    private static class c extends BroadcastReceiver {
        private static AtomicReference<c> INSTANCE = new AtomicReference<>();
        private final Context applicationContext;

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (INSTANCE.get() == null) {
                c cVar = new c(context);
                if (androidx.compose.animation.core.d.a(INSTANCE, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.applicationContext.unregisterReceiver(this);
        }

        public c(Context context) {
            this.applicationContext = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (f.LOCK) {
                try {
                    Iterator<f> it = f.INSTANCES.values().iterator();
                    while (it.hasNext()) {
                        it.next().p();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c();
        }
    }

    @TargetApi(14)
    private static class b implements BackgroundDetector.BackgroundStateChangeListener {
        private static AtomicReference<b> INSTANCE = new AtomicReference<>();

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (INSTANCE.get() == null) {
                    b bVar = new b();
                    if (androidx.compose.animation.core.d.a(INSTANCE, null, bVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(bVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z6) {
            synchronized (f.LOCK) {
                try {
                    for (f fVar : new ArrayList(f.INSTANCES.values())) {
                        if (fVar.automaticResourceManagementEnabled.get()) {
                            fVar.y(z6);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void i() {
        Preconditions.checkState(!this.deleted.get(), "FirebaseApp was deleted");
    }

    @NonNull
    public static f l() {
        f fVar;
        synchronized (LOCK) {
            try {
                fVar = INSTANCES.get(DEFAULT_APP_NAME);
                if (fVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                fVar.defaultHeartBeatController.get().l();
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (!UserManagerCompat.a(this.applicationContext)) {
            Log.i(LOG_TAG, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + m());
            c.b(this.applicationContext);
            return;
        }
        Log.i(LOG_TAG, "Device unlocked: initializing all Firebase APIs for app " + m());
        this.componentRuntime.p(u());
        this.defaultHeartBeatController.get().l();
    }

    @Nullable
    public static f q(@NonNull Context context) {
        synchronized (LOCK) {
            try {
                if (INSTANCES.containsKey(DEFAULT_APP_NAME)) {
                    return l();
                }
                n nVarA = n.a(context);
                if (nVarA == null) {
                    Log.w(LOG_TAG, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return r(context, nVarA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public static f r(@NonNull Context context, @NonNull n nVar) {
        return s(context, nVar, DEFAULT_APP_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ s4.a v(Context context) {
        return new s4.a(context, o(), (l4.c) this.componentRuntime.get(l4.c.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(boolean z6) {
        if (z6) {
            return;
        }
        this.defaultHeartBeatController.get().l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(boolean z6) {
        Log.d(LOG_TAG, "Notifying background state change listeners.");
        Iterator<a> it = this.backgroundStateChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onBackgroundStateChanged(z6);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.name.equals(((f) obj).m());
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    @KeepForSdk
    public String o() {
        return Base64Utils.encodeUrlSafeNoPadding(m().getBytes(Charset.defaultCharset())) + org.slf4j.c.ANY_NON_NULL_MARKER + Base64Utils.encodeUrlSafeNoPadding(n().c().getBytes(Charset.defaultCharset()));
    }

    @KeepForSdk
    @VisibleForTesting
    public boolean u() {
        return DEFAULT_APP_NAME.equals(m());
    }

    protected f(final Context context, String str, n nVar) {
        this.applicationContext = (Context) Preconditions.checkNotNull(context);
        this.name = Preconditions.checkNotEmpty(str);
        this.options = (n) Preconditions.checkNotNull(nVar);
        o oVarB = FirebaseInitProvider.b();
        e5.c.b("Firebase");
        e5.c.b("ComponentDiscovery");
        List<o4.b<ComponentRegistrar>> listB = com.google.firebase.components.g.c(context, ComponentDiscoveryService.class).b();
        e5.c.a();
        e5.c.b("Runtime");
        p.b bVarG = p.m(b0.INSTANCE).d(listB).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(com.google.firebase.components.c.s(context, Context.class, new Class[0])).b(com.google.firebase.components.c.s(this, f.class, new Class[0])).b(com.google.firebase.components.c.s(nVar, n.class, new Class[0])).g(new e5.b());
        if (UserManagerCompat.a(context) && FirebaseInitProvider.c()) {
            bVarG.b(com.google.firebase.components.c.s(oVarB, o.class, new Class[0]));
        }
        p pVarE = bVarG.e();
        this.componentRuntime = pVarE;
        e5.c.a();
        this.dataCollectionConfigStorage = new y<>(new o4.b() { // from class: com.google.firebase.d
            @Override // o4.b
            public final Object get() {
                return this.f1555a.v(context);
            }
        });
        this.defaultHeartBeatController = pVarE.b(m4.f.class);
        g(new a() { // from class: com.google.firebase.e
            @Override // com.google.firebase.f.a
            public final void onBackgroundStateChanged(boolean z6) {
                this.f1557a.w(z6);
            }
        });
        e5.c.a();
    }

    @NonNull
    public static f s(@NonNull Context context, @NonNull n nVar, @NonNull String str) {
        f fVar;
        b.b(context);
        String strX = x(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (LOCK) {
            Map<String, f> map = INSTANCES;
            Preconditions.checkState(!map.containsKey(strX), "FirebaseApp name " + strX + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            fVar = new f(context, strX, nVar);
            map.put(strX, fVar);
        }
        fVar.p();
        return fVar;
    }

    private static String x(@NonNull String str) {
        return str.trim();
    }

    @KeepForSdk
    public void g(a aVar) {
        i();
        if (this.automaticResourceManagementEnabled.get() && BackgroundDetector.getInstance().isInBackground()) {
            aVar.onBackgroundStateChanged(true);
        }
        this.backgroundStateChangeListeners.add(aVar);
    }

    @KeepForSdk
    public void h(@NonNull g gVar) {
        i();
        Preconditions.checkNotNull(gVar);
        this.lifecycleListeners.add(gVar);
    }

    @KeepForSdk
    public <T> T j(Class<T> cls) {
        i();
        return (T) this.componentRuntime.get(cls);
    }

    @NonNull
    public Context k() {
        i();
        return this.applicationContext;
    }

    @NonNull
    public String m() {
        i();
        return this.name;
    }

    @NonNull
    public n n() {
        i();
        return this.options;
    }

    @KeepForSdk
    public boolean t() {
        i();
        return this.dataCollectionConfigStorage.get().b();
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.name).add("options", this.options).toString();
    }
}
