package org.bouncycastle.util;

/* JADX INFO: loaded from: classes11.dex */
public class e {
    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || !(obj == null || obj2 == null || !obj.equals(obj2));
    }

    public static int b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
