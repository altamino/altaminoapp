package com.google.common.base;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes10.dex */
final class n {
    private static final Logger logger = Logger.getLogger(n.class.getName());
    private static final m patternCompiler = b();

    private static final class b implements m {
        private b() {
        }
    }

    private static m b() {
        return new b();
    }

    static boolean c(String str) {
        return str == null || str.isEmpty();
    }

    private n() {
    }

    static String a(String str) {
        if (c(str)) {
            return null;
        }
        return str;
    }
}
