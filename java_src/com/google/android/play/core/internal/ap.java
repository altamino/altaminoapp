package com.google.android.play.core.internal;

import java.io.File;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
final class ap implements ao {
    ap() {
    }

    @Override // com.google.android.play.core.internal.ao
    public final Object[] a(Object obj, List<File> list, File file, List<IOException> list2) {
        return (Object[]) bb.a(obj, "makePathElements", Object[].class, List.class, list, File.class, null, List.class, list2);
    }
}
