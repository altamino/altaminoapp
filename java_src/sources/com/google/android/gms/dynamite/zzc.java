package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;

/* JADX INFO: loaded from: classes7.dex */
final class zzc extends PathClassLoader {
    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z6) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z6);
    }

    zzc(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }
}
