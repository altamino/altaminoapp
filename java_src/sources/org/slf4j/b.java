package org.slf4j;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.event.d;
import org.slf4j.helpers.e;
import org.slf4j.helpers.f;
import org.slf4j.helpers.g;
import org.slf4j.impl.StaticLoggerBinder;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    static final String CODES_PREFIX = "http://www.slf4j.org/codes.html";
    static final int FAILED_INITIALIZATION = 2;
    static volatile int INITIALIZATION_STATE = 0;
    static final String JAVA_VENDOR_PROPERTY = "java.vendor.url";
    static final String LOGGER_NAME_MISMATCH_URL = "http://www.slf4j.org/codes.html#loggerNameMismatch";
    static final String MULTIPLE_BINDINGS_URL = "http://www.slf4j.org/codes.html#multiple_bindings";
    static final int NOP_FALLBACK_INITIALIZATION = 4;
    static final String NO_STATICLOGGERBINDER_URL = "http://www.slf4j.org/codes.html#StaticLoggerBinder";
    static final String NULL_LF_URL = "http://www.slf4j.org/codes.html#null_LF";
    static final int ONGOING_INITIALIZATION = 1;
    static final String REPLAY_URL = "http://www.slf4j.org/codes.html#replay";
    static final String SUBSTITUTE_LOGGER_URL = "http://www.slf4j.org/codes.html#substituteLogger";
    static final int SUCCESSFUL_INITIALIZATION = 3;
    static final int UNINITIALIZED = 0;
    static final String UNSUCCESSFUL_INIT_MSG = "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit";
    static final String UNSUCCESSFUL_INIT_URL = "http://www.slf4j.org/codes.html#unsuccessfulInit";
    static final String VERSION_MISMATCH = "http://www.slf4j.org/codes.html#version_mismatch";
    static final f SUBST_FACTORY = new f();
    static final org.slf4j.helpers.c NOP_FALLBACK_FACTORY = new org.slf4j.helpers.c();
    static final String DETECT_LOGGER_NAME_MISMATCH_PROPERTY = "slf4j.detectLoggerNameMismatch";
    static boolean DETECT_LOGGER_NAME_MISMATCH = g.f(DETECT_LOGGER_NAME_MISMATCH_PROPERTY);
    private static final String[] API_COMPATIBILITY_LIST = {"1.6", "1.7"};
    private static String STATIC_LOGGER_BINDER_PATH = "org/slf4j/impl/StaticLoggerBinder.class";

    static void e(Throwable th) {
        INITIALIZATION_STATE = 2;
        g.d("Failed to instantiate SLF4J LoggerFactory", th);
    }

    private static boolean m(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("org/slf4j/impl/StaticLoggerBinder") || str.contains("org.slf4j.impl.StaticLoggerBinder");
    }

    private static void c(int i10) {
        g.c("A number (" + i10 + ") of logging calls during the initialization phase have been intercepted and are");
        g.c("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        g.c("See also http://www.slf4j.org/codes.html#replay");
    }

    private static void d() {
        g.c("The following set of substitute loggers may have been accessed");
        g.c("during the initialization phase. Logging calls during this");
        g.c("phase were not honored. However, subsequent logging calls to these");
        g.c("loggers will work as normally expected.");
        g.c("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    static Set<URL> f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = b.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(STATIC_LOGGER_BINDER_PATH) : classLoader.getResources(STATIC_LOGGER_BINDER_PATH);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e) {
            g.d("Error getting resources from path", e);
        }
        return linkedHashSet;
    }

    private static void g() {
        f fVar = SUBST_FACTORY;
        synchronized (fVar) {
            try {
                fVar.e();
                for (e eVar : fVar.d()) {
                    eVar.i(j(eVar.getName()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ILoggerFactory h() {
        if (INITIALIZATION_STATE == 0) {
            synchronized (b.class) {
                try {
                    if (INITIALIZATION_STATE == 0) {
                        INITIALIZATION_STATE = 1;
                        o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i10 = INITIALIZATION_STATE;
        if (i10 == 1) {
            return SUBST_FACTORY;
        }
        if (i10 == 2) {
            throw new IllegalStateException(UNSUCCESSFUL_INIT_MSG);
        }
        if (i10 == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i10 == 4) {
            return NOP_FALLBACK_FACTORY;
        }
        throw new IllegalStateException("Unreachable code");
    }

    private static boolean l() {
        String strG = g.g(JAVA_VENDOR_PROPERTY);
        if (strG == null) {
            return false;
        }
        return strG.toLowerCase().contains("android");
    }

    private static void q() {
        LinkedBlockingQueue<d> linkedBlockingQueueC = SUBST_FACTORY.c();
        int size = linkedBlockingQueueC.size();
        ArrayList<d> arrayList = new ArrayList(128);
        int i10 = 0;
        while (linkedBlockingQueueC.drainTo(arrayList, 128) != 0) {
            for (d dVar : arrayList) {
                r(dVar);
                int i11 = i10 + 1;
                if (i10 == 0) {
                    b(dVar, size);
                }
                i10 = i11;
            }
            arrayList.clear();
        }
    }

    private static void r(d dVar) {
        if (dVar == null) {
            return;
        }
        e eVarA = dVar.a();
        String name = eVarA.getName();
        if (eVarA.g()) {
            throw new IllegalStateException("Delegate logger cannot be null at this state.");
        }
        if (eVarA.f()) {
            return;
        }
        if (eVarA.e()) {
            eVarA.h(dVar);
        } else {
            g.c(name);
        }
    }

    private static void s(Set<URL> set) {
        if (set == null || !k(set)) {
            return;
        }
        g.c("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
    }

    private static final void u() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z6 = false;
            for (String str2 : API_COMPATIBILITY_LIST) {
                if (str.startsWith(str2)) {
                    z6 = true;
                }
            }
            if (z6) {
                return;
            }
            g.c("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(API_COMPATIBILITY_LIST).toString());
            g.c("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            g.d("Unexpected problem occured during version sanity check", th);
        }
    }

    private b() {
    }

    private static final void a() {
        Set<URL> setF;
        try {
            try {
                if (!l()) {
                    setF = f();
                    t(setF);
                } else {
                    setF = null;
                }
                StaticLoggerBinder.getSingleton();
                INITIALIZATION_STATE = 3;
                s(setF);
            } catch (Exception e) {
                e(e);
                throw new IllegalStateException("Unexpected initialization failure", e);
            } catch (NoClassDefFoundError e2) {
                if (m(e2.getMessage())) {
                    INITIALIZATION_STATE = 4;
                    g.c("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                    g.c("Defaulting to no-operation (NOP) logger implementation");
                    g.c("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                } else {
                    e(e2);
                    throw e2;
                }
            } catch (NoSuchMethodError e6) {
                String message = e6.getMessage();
                if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                    INITIALIZATION_STATE = 2;
                    g.c("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                    g.c("Your binding is version 1.5.5 or earlier.");
                    g.c("Upgrade your binding to version 1.6.x.");
                }
                throw e6;
            }
            p();
        } catch (Throwable th) {
            p();
            throw th;
        }
    }

    private static void b(d dVar, int i10) {
        if (dVar.a().e()) {
            c(i10);
        } else if (!dVar.a().f()) {
            d();
        }
    }

    public static a i(Class<?> cls) {
        Class<?> clsA;
        a aVarJ = j(cls.getName());
        if (DETECT_LOGGER_NAME_MISMATCH && (clsA = g.a()) != null && n(cls, clsA)) {
            g.c(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", aVarJ.getName(), clsA.getName()));
            g.c("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return aVarJ;
    }

    public static a j(String str) {
        return h().a(str);
    }

    private static boolean k(Set<URL> set) {
        if (set.size() > 1) {
            return true;
        }
        return false;
    }

    private static boolean n(Class<?> cls, Class<?> cls2) {
        return !cls2.isAssignableFrom(cls);
    }

    private static final void o() {
        a();
        if (INITIALIZATION_STATE == 3) {
            u();
        }
    }

    private static void p() {
        g();
        q();
        SUBST_FACTORY.b();
    }

    private static void t(Set<URL> set) {
        if (k(set)) {
            g.c("Class path contains multiple SLF4J bindings.");
            Iterator<URL> it = set.iterator();
            while (it.hasNext()) {
                g.c("Found binding in [" + it.next() + "]");
            }
            g.c("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }
}
