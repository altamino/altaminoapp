package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;

/* JADX INFO: loaded from: classes11.dex */
public class o {
    private final f activatedConfigsCache;
    private final f defaultConfigsCache;
    private final Executor executor;
    private final Set<BiConsumer<String, g>> listeners = new HashSet();

    @VisibleForTesting
    public static final Charset FRC_BYTE_ARRAY_ENCODING = Charset.forName("UTF-8");
    static final Pattern TRUE_REGEX = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
    static final Pattern FALSE_REGEX = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    private static void n(String str, String str2) {
        Log.w(com.google.firebase.remoteconfig.a.TAG, String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    private void c(final String str, final g gVar) {
        if (gVar == null) {
            return;
        }
        synchronized (this.listeners) {
            try {
                for (final BiConsumer<String, g> biConsumer : this.listeners) {
                    this.executor.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            biConsumer.accept(str, gVar);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Set<String> g(f fVar) {
        HashSet hashSet = new HashSet();
        g gVarF = f(fVar);
        if (gVarF == null) {
            return hashSet;
        }
        Iterator<String> itKeys = gVarF.g().keys();
        while (itKeys.hasNext()) {
            hashSet.add(itKeys.next());
        }
        return hashSet;
    }

    public void b(BiConsumer<String, g> biConsumer) {
        synchronized (this.listeners) {
            this.listeners.add(biConsumer);
        }
    }

    public Map<String, c5.n> d() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(g(this.activatedConfigsCache));
        hashSet.addAll(g(this.defaultConfigsCache));
        HashMap map = new HashMap();
        for (String str : hashSet) {
            map.put(str, l(str));
        }
        return map;
    }

    public boolean e(String str) {
        String strK = k(this.activatedConfigsCache, str);
        if (strK != null) {
            if (TRUE_REGEX.matcher(strK).matches()) {
                c(str, f(this.activatedConfigsCache));
                return true;
            }
            if (FALSE_REGEX.matcher(strK).matches()) {
                c(str, f(this.activatedConfigsCache));
                return false;
            }
        }
        String strK2 = k(this.defaultConfigsCache, str);
        if (strK2 != null) {
            if (TRUE_REGEX.matcher(strK2).matches()) {
                return true;
            }
            if (FALSE_REGEX.matcher(strK2).matches()) {
                return false;
            }
        }
        n(str, "Boolean");
        return false;
    }

    public long h(String str) {
        Long lI = i(this.activatedConfigsCache, str);
        if (lI != null) {
            c(str, f(this.activatedConfigsCache));
            return lI.longValue();
        }
        Long lI2 = i(this.defaultConfigsCache, str);
        if (lI2 != null) {
            return lI2.longValue();
        }
        n(str, "Long");
        return 0L;
    }

    public String j(String str) {
        String strK = k(this.activatedConfigsCache, str);
        if (strK != null) {
            c(str, f(this.activatedConfigsCache));
            return strK;
        }
        String strK2 = k(this.defaultConfigsCache, str);
        if (strK2 != null) {
            return strK2;
        }
        n(str, "String");
        return "";
    }

    public c5.n l(String str) {
        String strK = k(this.activatedConfigsCache, str);
        if (strK != null) {
            c(str, f(this.activatedConfigsCache));
            return new w(strK, 2);
        }
        String strK2 = k(this.defaultConfigsCache, str);
        if (strK2 != null) {
            return new w(strK2, 1);
        }
        n(str, "FirebaseRemoteConfigValue");
        return new w("", 0);
    }

    public o(Executor executor, f fVar, f fVar2) {
        this.executor = executor;
        this.activatedConfigsCache = fVar;
        this.defaultConfigsCache = fVar2;
    }

    @Nullable
    private static g f(f fVar) {
        return fVar.f();
    }

    @Nullable
    private static Long i(f fVar, String str) {
        g gVarF = f(fVar);
        if (gVarF == null) {
            return null;
        }
        try {
            return Long.valueOf(gVarF.g().getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private static String k(f fVar, String str) {
        g gVarF = f(fVar);
        if (gVarF == null) {
            return null;
        }
        try {
            return gVarF.g().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }
}
