package com.google.common.base;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    public static final class b {
        private final String className;
        private final C0216b holderHead;
        private C0216b holderTail;
        private boolean omitEmptyValues;
        private boolean omitNullValues;

        private static final class a extends C0216b {
        }

        /* JADX INFO: renamed from: com.google.common.base.i$b$b, reason: collision with other inner class name */
        private static class C0216b {
            String name;
            C0216b next;
            Object value;

            private C0216b() {
            }
        }

        private b(String str) {
            C0216b c0216b = new C0216b();
            this.holderHead = c0216b;
            this.holderTail = c0216b;
            this.omitNullValues = false;
            this.omitEmptyValues = false;
            this.className = (String) o.k(str);
        }

        private C0216b a() {
            C0216b c0216b = new C0216b();
            this.holderTail.next = c0216b;
            this.holderTail = c0216b;
            return c0216b;
        }

        private static boolean d(Object obj) {
            if (obj instanceof CharSequence) {
                return ((CharSequence) obj).length() == 0;
            }
            if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            }
            if (obj instanceof Map) {
                return ((Map) obj).isEmpty();
            }
            if (obj instanceof l) {
                return !((l) obj).c();
            }
            return obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0030  */
        /* JADX WARN: Code duplicated, block: B:14:0x0037  */
        /* JADX WARN: Code duplicated, block: B:16:0x0041  */
        /* JADX WARN: Code duplicated, block: B:19:0x005e  */
        public String toString() {
            String str;
            boolean z6 = this.omitNullValues;
            boolean z10 = this.omitEmptyValues;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.className);
            sb.append(kotlinx.serialization.json.internal.b.BEGIN_OBJ);
            String str2 = "";
            for (C0216b c0216b = this.holderHead.next; c0216b != null; c0216b = c0216b.next) {
                Object obj = c0216b.value;
                if (c0216b instanceof a) {
                    sb.append(str2);
                    str = c0216b.name;
                    if (str != null) {
                        sb.append(str);
                        sb.append('=');
                    }
                    if (obj == null && obj.getClass().isArray()) {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str2 = ", ";
                } else if (obj == null) {
                    if (!z6) {
                        sb.append(str2);
                        str = c0216b.name;
                        if (str != null) {
                            sb.append(str);
                            sb.append('=');
                        }
                        if (obj == null) {
                            sb.append(obj);
                        } else {
                            sb.append(obj);
                        }
                        str2 = ", ";
                    }
                } else if (!z10 || !d(obj)) {
                    sb.append(str2);
                    str = c0216b.name;
                    if (str != null) {
                        sb.append(str);
                        sb.append('=');
                    }
                    if (obj == null) {
                        sb.append(obj);
                    } else {
                        sb.append(obj);
                    }
                    str2 = ", ";
                }
            }
            sb.append(kotlinx.serialization.json.internal.b.END_OBJ);
            return sb.toString();
        }

        private b b(Object obj) {
            a().value = obj;
            return this;
        }

        public b c(Object obj) {
            return b(obj);
        }
    }

    public static <T> T a(T t5, T t10) {
        if (t5 != null) {
            return t5;
        }
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
