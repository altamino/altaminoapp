package org.slf4j.helpers;

import java.io.PrintStream;

/* JADX INFO: loaded from: classes5.dex */
public final class g {
    private static b SECURITY_MANAGER;
    private static boolean SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED;

    private static b e() {
        try {
            return new b();
        } catch (SecurityException unused) {
            return null;
        }
    }

    private static final class b extends SecurityManager {
        private b() {
        }

        @Override // java.lang.SecurityManager
        protected Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }

    private static b b() {
        b bVar = SECURITY_MANAGER;
        if (bVar != null) {
            return bVar;
        }
        if (SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED) {
            return null;
        }
        b bVarE = e();
        SECURITY_MANAGER = bVarE;
        SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED = true;
        return bVarE;
    }

    public static final void c(String str) {
        System.err.println("SLF4J: " + str);
    }

    public static final void d(String str, Throwable th) {
        PrintStream printStream = System.err;
        printStream.println(str);
        printStream.println("Reported exception:");
        th.printStackTrace();
    }

    public static String g(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null input");
        }
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    private g() {
    }

    public static Class<?> a() {
        int i10;
        b bVarB = b();
        if (bVarB == null) {
            return null;
        }
        Class<?>[] classContext = bVarB.getClassContext();
        String name = g.class.getName();
        int i11 = 0;
        while (i11 < classContext.length && !name.equals(classContext[i11].getName())) {
            i11++;
        }
        if (i11 < classContext.length && (i10 = i11 + 2) < classContext.length) {
            return classContext[i10];
        }
        throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
    }

    public static boolean f(String str) {
        String strG = g(str);
        if (strG == null) {
            return false;
        }
        return strG.equalsIgnoreCase("true");
    }
}
