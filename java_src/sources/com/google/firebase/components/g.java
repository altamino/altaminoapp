package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class g<T> {
    private static final String COMPONENT_KEY_PREFIX = "com.google.firebase.components:";
    private static final String COMPONENT_SENTINEL_VALUE = "com.google.firebase.components.ComponentRegistrar";
    static final String TAG = "ComponentDiscovery";
    private final T context;
    private final c<T> retriever;

    private static class b implements c<Context> {
        private final Class<? extends Service> discoveryService;

        private b(Class<? extends Service> cls) {
            this.discoveryService = cls;
        }

        private Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(g.TAG, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.discoveryService), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w(g.TAG, this.discoveryService + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(g.TAG, "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.g.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public List<String> a(Context context) {
            Bundle bundleB = b(context);
            if (bundleB == null) {
                Log.w(g.TAG, "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : bundleB.keySet()) {
                if (g.COMPONENT_SENTINEL_VALUE.equals(bundleB.get(str)) && str.startsWith(g.COMPONENT_KEY_PREFIX)) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    @VisibleForTesting
    interface c<T> {
        List<String> a(T t5);
    }

    public static g<Context> c(Context context, Class<? extends Service> cls) {
        return new g<>(context, new b(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static ComponentRegistrar d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new x(String.format("Class %s is not an instance of %s", str, COMPONENT_SENTINEL_VALUE));
        } catch (ClassNotFoundException unused) {
            Log.w(TAG, String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e) {
            throw new x(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new x(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e6) {
            throw new x(String.format("Could not instantiate %s", str), e6);
        } catch (InvocationTargetException e7) {
            throw new x(String.format("Could not instantiate %s", str), e7);
        }
    }

    public List<o4.b<ComponentRegistrar>> b() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.retriever.a(this.context)) {
            arrayList.add(new o4.b() { // from class: com.google.firebase.components.f
                @Override // o4.b
                public final Object get() {
                    return g.d(str);
                }
            });
        }
        return arrayList;
    }

    @VisibleForTesting
    g(T t5, c<T> cVar) {
        this.context = t5;
        this.retriever = cVar;
    }
}
