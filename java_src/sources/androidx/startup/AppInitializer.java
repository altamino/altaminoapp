package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.tracing.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class AppInitializer {
    private static final String SECTION_NAME = "Startup";
    private static volatile AppInitializer sInstance;
    private static final Object sLock = new Object();

    @NonNull
    final Context mContext;

    @NonNull
    final Set<Class<? extends Initializer<?>>> mDiscovered = new HashSet();

    @NonNull
    final Map<Class<?>, Object> mInitialized = new HashMap();

    @NonNull
    public static AppInitializer e(@NonNull Context context) {
        if (sInstance == null) {
            synchronized (sLock) {
                try {
                    if (sInstance == null) {
                        sInstance = new AppInitializer(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    void a() {
        try {
            try {
                Trace.a(SECTION_NAME);
                b(this.mContext.getPackageManager().getProviderInfo(new ComponentName(this.mContext.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
                Trace.b();
            } catch (PackageManager.NameNotFoundException e) {
                throw new StartupException(e);
            }
        } catch (Throwable th) {
            Trace.b();
            throw th;
        }
    }

    void b(@Nullable Bundle bundle) {
        String string = this.mContext.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (Initializer.class.isAssignableFrom(cls)) {
                            this.mDiscovered.add((Class<? extends Initializer<?>>) cls);
                        }
                    }
                }
                Iterator<Class<? extends Initializer<?>>> it = this.mDiscovered.iterator();
                while (it.hasNext()) {
                    d(it.next(), hashSet);
                }
            } catch (ClassNotFoundException e) {
                throw new StartupException(e);
            }
        }
    }

    @NonNull
    <T> T c(@NonNull Class<? extends Initializer<?>> cls) {
        T t5;
        synchronized (sLock) {
            try {
                t5 = (T) this.mInitialized.get(cls);
                if (t5 == null) {
                    t5 = (T) d(cls, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t5;
    }

    public boolean g(@NonNull Class<? extends Initializer<?>> cls) {
        return this.mDiscovered.contains(cls);
    }

    AppInitializer(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    @NonNull
    private <T> T d(@NonNull Class<? extends Initializer<?>> cls, @NonNull Set<Class<?>> set) {
        T t5;
        if (Trace.d()) {
            try {
                Trace.a(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.b();
                throw th;
            }
        }
        if (!set.contains(cls)) {
            if (!this.mInitialized.containsKey(cls)) {
                set.add(cls);
                try {
                    Initializer<?> initializerNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    List<Class<? extends Initializer<?>>> listDependencies = initializerNewInstance.dependencies();
                    if (!listDependencies.isEmpty()) {
                        for (Class<? extends Initializer<?>> cls2 : listDependencies) {
                            if (!this.mInitialized.containsKey(cls2)) {
                                d(cls2, set);
                            }
                        }
                    }
                    t5 = (T) initializerNewInstance.create(this.mContext);
                    set.remove(cls);
                    this.mInitialized.put(cls, t5);
                } catch (Throwable th2) {
                    throw new StartupException(th2);
                }
            } else {
                t5 = (T) this.mInitialized.get(cls);
            }
            Trace.b();
            return t5;
        }
        throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
    }

    @NonNull
    public <T> T f(@NonNull Class<? extends Initializer<T>> cls) {
        return (T) c(cls);
    }
}
