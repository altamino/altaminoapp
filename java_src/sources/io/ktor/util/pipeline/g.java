package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;

/* JADX INFO: loaded from: classes10.dex */
public final class g {
    private static final boolean DISABLE_SFG = t.e(System.getProperty("io.ktor.internal.disable.sfg"), "true");

    public static final boolean a() {
        return DISABLE_SFG;
    }
}
