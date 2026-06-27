package com.google.android.play.core.internal;

import com.narvii.modulization.ConfigApiRequestHelper;
import java.io.File;
import java.util.Set;

/* loaded from: classes.dex */
final class aw implements af {
    aw() {
    }

    @Override // com.google.android.play.core.internal.af
    public final void a(ClassLoader classLoader, Set<File> set) {
        at.b(classLoader, set);
    }

    @Override // com.google.android.play.core.internal.af
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        return ah.a(classLoader, file, file2, z, new am(), ConfigApiRequestHelper.PATH_KEY, new az());
    }
}
