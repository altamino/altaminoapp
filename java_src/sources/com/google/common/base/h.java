package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes10.dex */
public class h {
    private final String separator;

    public static h d(char c7) {
        return new h(String.valueOf(c7));
    }

    private h(String str) {
        this.separator = (String) o.k(str);
    }

    public <A extends Appendable> A a(A a7, Iterator<? extends Object> it) throws IOException {
        o.k(a7);
        if (it.hasNext()) {
            a7.append(e(it.next()));
            while (it.hasNext()) {
                a7.append(this.separator);
                a7.append(e(it.next()));
            }
        }
        return a7;
    }

    public final StringBuilder b(StringBuilder sb, Iterable<? extends Object> iterable) {
        return c(sb, iterable.iterator());
    }

    public final StringBuilder c(StringBuilder sb, Iterator<? extends Object> it) {
        try {
            a(sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    CharSequence e(Object obj) {
        Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }
}
