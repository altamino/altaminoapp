package com.google.android.play.core.internal;

import java.io.File;
import java.util.Set;

/* loaded from: classes.dex */
final class aq implements af {
    aq() {
    }

    @Override // com.google.android.play.core.internal.af
    public final void a(ClassLoader classLoader, Set<File> set) {
        an.a(classLoader, set, new ap());
    }

    @Override // com.google.android.play.core.internal.af
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        return an.a(classLoader, file, file2, z, "zip");
    }
}
