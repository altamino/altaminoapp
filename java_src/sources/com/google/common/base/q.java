package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q {

    private static class b<T> implements p<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends p<? super T>> components;

        @Override // com.google.common.base.p
        public boolean apply(T t5) {
            for (int i10 = 0; i10 < this.components.size(); i10++) {
                if (!this.components.get(i10).apply(t5)) {
                    return false;
                }
            }
            return true;
        }

        private b(List<? extends p<? super T>> list) {
            this.components = list;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.components.equals(((b) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return q.d("and", this.components);
        }
    }

    private static <T> List<p<? super T>> c(p<? super T> pVar, p<? super T> pVar2) {
        return Arrays.asList(pVar, pVar2);
    }

    public static <T> p<T> b(p<? super T> pVar, p<? super T> pVar2) {
        return new b(c((p) o.k(pVar), (p) o.k(pVar2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z6 = true;
        for (Object obj : iterable) {
            if (!z6) {
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
            sb.append(obj);
            z6 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
