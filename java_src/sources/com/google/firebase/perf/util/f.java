package com.google.firebase.perf.util;

import android.os.Bundle;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    private static final y4.a logger = y4.a.e();
    private final Bundle bundle;

    public f() {
        this(new Bundle());
    }

    public f(Bundle bundle) {
        this.bundle = (Bundle) bundle.clone();
    }

    public boolean a(String str) {
        return str != null && this.bundle.containsKey(str);
    }

    private g<Integer> d(String str) {
        if (!a(str)) {
            return g.a();
        }
        try {
            return g.b((Integer) this.bundle.get(str));
        } catch (ClassCastException e) {
            logger.b("Metadata key %s contains type other than int: %s", str, e.getMessage());
            return g.a();
        }
    }

    public g<Boolean> b(String str) {
        if (!a(str)) {
            return g.a();
        }
        try {
            return g.b((Boolean) this.bundle.get(str));
        } catch (ClassCastException e) {
            logger.b("Metadata key %s contains type other than boolean: %s", str, e.getMessage());
            return g.a();
        }
    }

    public g<Double> c(String str) {
        if (!a(str)) {
            return g.a();
        }
        Object obj = this.bundle.get(str);
        if (obj == null) {
            return g.a();
        }
        if (obj instanceof Float) {
            return g.e(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return g.e((Double) obj);
        }
        logger.b("Metadata key %s contains type other than double: %s", str);
        return g.a();
    }

    public g<Long> e(String str) {
        g<Integer> gVarD = d(str);
        if (gVarD.d()) {
            return g.e(Long.valueOf(gVarD.c().intValue()));
        }
        return g.a();
    }
}
