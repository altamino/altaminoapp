package org.schabi.newpipe.extractor.linkhandler;

import aa.h;
import java.util.Objects;
import qa.y;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {
    public abstract String e(String str) throws UnsupportedOperationException, h;

    public abstract String f(String str) throws UnsupportedOperationException, h;

    public abstract boolean h(String str) throws h;

    public a b(String str, String str2) throws h {
        Objects.requireNonNull(str, "ID cannot be null");
        String strG = g(str, str2);
        return new a(strG, strG, str);
    }

    public a d(String str, String str2) throws h {
        Objects.requireNonNull(str, "URL cannot be null");
        if (a(str)) {
            String strE = e(str);
            return new a(str, g(strE, str2), strE);
        }
        throw new h("URL not accepted: " + str);
    }

    public boolean a(String str) throws h {
        return h(str);
    }

    public a c(String str) throws h {
        if (!y.m(str)) {
            String strF = y.f(str);
            return d(strF, y.g(strF));
        }
        throw new IllegalArgumentException("The url is null or empty");
    }

    public String g(String str, String str2) throws UnsupportedOperationException, h {
        return f(str);
    }
}
