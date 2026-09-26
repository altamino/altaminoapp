package androidx.media3.extractor;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class e {
    static {
        ExtractorsFactory extractorsFactory = ExtractorsFactory.EMPTY;
    }

    public static /* synthetic */ Extractor[] b() {
        return new Extractor[0];
    }

    public static Extractor[] a(ExtractorsFactory extractorsFactory, Uri uri, Map map) {
        return extractorsFactory.createExtractors();
    }
}
