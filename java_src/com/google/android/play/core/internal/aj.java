package com.google.android.play.core.internal;

import java.io.File;

/* loaded from: classes.dex */
final class aj implements ai {
    aj() {
    }

    @Override // com.google.android.play.core.internal.ai
    public final boolean a(Object obj, File file, File file2) {
        return new File((String) bb.a(obj.getClass(), "optimizedPathFor", String.class, File.class, file, File.class, file2)).exists();
    }
}
