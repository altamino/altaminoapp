package com.google.android.play.core.internal;

import com.narvii.modulization.ConfigApiRequestHelper;
import java.io.File;
import java.util.Set;

/* loaded from: classes.dex */
final class at implements af {
    at() {
    }

    static void b(ClassLoader classLoader, Set<File> set) {
        an.a(classLoader, set, new as());
    }

    static boolean b(ClassLoader classLoader, File file, File file2, boolean z) {
        return ah.a(classLoader, file, file2, z, new am(), ConfigApiRequestHelper.PATH_KEY, new av());
    }

    @Override // com.google.android.play.core.internal.af
    public final void a(ClassLoader classLoader, Set<File> set) {
        b(classLoader, set);
    }

    @Override // com.google.android.play.core.internal.af
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        return b(classLoader, file, file2, z);
    }
}
