package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new ExtractorsFactory() { // from class: androidx.media3.extractor.d
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return e.b();
        }
    };

    Extractor[] a(Uri uri, Map<String, List<String>> map);

    Extractor[] createExtractors();
}
