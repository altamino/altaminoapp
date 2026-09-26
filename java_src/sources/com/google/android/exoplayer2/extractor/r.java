package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public interface r {
    public static final r EMPTY = new r() { // from class: com.google.android.exoplayer2.extractor.p
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return q.b();
        }
    };

    l[] a(Uri uri, Map<String, List<String>> map);

    l[] createExtractors();
}
