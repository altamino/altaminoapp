package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: org.bouncycastle.jcajce.provider.symmetric.util.a$a, reason: collision with other inner class name */
    static class C0473a implements PrivilegedAction {
        final /* synthetic */ String val$className;

        C0473a(String str) {
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

    public static Class a(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new C0473a(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
