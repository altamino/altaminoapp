package org.bouncycastle.pqc.jcajce.provider;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends Provider implements z8.a {
    private static final String ALGORITHM_PACKAGE = "org.bouncycastle.pqc.jcajce.provider.";
    public static final z8.b CONFIGURATION = null;
    public static String PROVIDER_NAME = "BCPQC";
    private static String info = "BouncyCastle Post-Quantum Security Provider v1.70";
    private static final Map keyInfoConverters = new HashMap();
    private static final String[] ALGORITHMS = {"Rainbow", "McEliece", "SPHINCS", "LMS", "NH", "XMSS", "QTESLA"};

    /* JADX INFO: renamed from: org.bouncycastle.pqc.jcajce.provider.a$a, reason: collision with other inner class name */
    class C0478a implements PrivilegedAction {
        C0478a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            a.this.i();
            return null;
        }
    }

    static class b implements PrivilegedAction {
        final /* synthetic */ String val$className;

        b(String str) {
            this.val$className = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(this.val$className);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public a() {
        super(PROVIDER_NAME, 1.7d, info);
        AccessController.doPrivileged(new C0478a());
    }

    private void f(String str, String[] strArr) {
        for (int i10 = 0; i10 != strArr.length; i10++) {
            Class clsG = g(a.class, str + strArr[i10] + "$Mappings");
            if (clsG != null) {
                try {
                    ((a9.a) clsG.newInstance()).a(this);
                } catch (Exception e) {
                    throw new InternalError("cannot create instance of " + str + strArr[i10] + "$Mappings : " + e);
                }
            }
        }
    }

    static Class g(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new b(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        f(ALGORITHM_PACKAGE, ALGORITHMS);
    }
}
