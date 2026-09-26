package g2;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class k implements e {
    private static final String BACKEND_KEY_PREFIX = "backend:";
    private static final String TAG = "BackendRegistry";
    private final a backendFactoryProvider;
    private final Map<String, m> backends;
    private final i creationContextFactory;

    static class a {
        private final Context applicationContext;
        private Map<String, String> backendProviders = null;

        private Map<String, String> c() {
            if (this.backendProviders == null) {
                this.backendProviders = a(this.applicationContext);
            }
            return this.backendProviders;
        }

        private static Bundle d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(k.TAG, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w(k.TAG, "TransportBackendDiscovery has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(k.TAG, "Application info not found.");
                return null;
            }
        }

        @Nullable
        d b(String str) {
            String str2 = c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str2).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w(k.TAG, String.format("Class %s is not found.", str2), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w(k.TAG, String.format("Could not instantiate %s.", str2), e2);
                return null;
            } catch (InstantiationException e6) {
                Log.w(k.TAG, String.format("Could not instantiate %s.", str2), e6);
                return null;
            } catch (NoSuchMethodException e7) {
                Log.w(k.TAG, String.format("Could not instantiate %s", str2), e7);
                return null;
            } catch (InvocationTargetException e10) {
                Log.w(k.TAG, String.format("Could not instantiate %s", str2), e10);
                return null;
            }
        }

        a(Context context) {
            this.applicationContext = context;
        }

        private Map<String, String> a(Context context) {
            Bundle bundleD = d(context);
            if (bundleD == null) {
                Log.w(k.TAG, "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap map = new HashMap();
            for (String str : bundleD.keySet()) {
                Object obj = bundleD.get(str);
                if ((obj instanceof String) && str.startsWith(k.BACKEND_KEY_PREFIX)) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String strTrim = str2.trim();
                        if (!strTrim.isEmpty()) {
                            map.put(strTrim, str.substring(8));
                        }
                    }
                }
            }
            return map;
        }
    }

    k(Context context, i iVar) {
        this(new a(context), iVar);
    }

    @Override // g2.e
    @Nullable
    public synchronized m get(String str) {
        if (this.backends.containsKey(str)) {
            return this.backends.get(str);
        }
        d dVarB = this.backendFactoryProvider.b(str);
        if (dVarB == null) {
            return null;
        }
        m mVarCreate = dVarB.create(this.creationContextFactory.a(str));
        this.backends.put(str, mVarCreate);
        return mVarCreate;
    }

    k(a aVar, i iVar) {
        this.backends = new HashMap();
        this.backendFactoryProvider = aVar;
        this.creationContextFactory = iVar;
    }
}
