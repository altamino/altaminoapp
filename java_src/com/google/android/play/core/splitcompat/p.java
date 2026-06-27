package com.google.android.play.core.splitcompat;

import java.io.File;

/* loaded from: classes.dex */
final class p {
    private final File a;
    private final String b;

    p(File file, String str) {
        this.a = file;
        this.b = str;
    }

    final String a() {
        return this.b;
    }

    final File b() {
        return this.a;
    }
}
