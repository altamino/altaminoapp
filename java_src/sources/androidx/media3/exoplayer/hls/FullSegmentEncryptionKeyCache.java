package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class FullSegmentEncryptionKeyCache {
    private final LinkedHashMap<Uri, byte[]> backingMap;

    @Nullable
    public byte[] a(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.backingMap.get(uri);
    }

    @Nullable
    public byte[] b(Uri uri, byte[] bArr) {
        return this.backingMap.put((Uri) Assertions.e(uri), (byte[]) Assertions.e(bArr));
    }

    @Nullable
    public byte[] c(Uri uri) {
        return this.backingMap.remove(Assertions.e(uri));
    }

    public FullSegmentEncryptionKeyCache(final int i10) {
        this.backingMap = new LinkedHashMap<Uri, byte[]>(i10 + 1, 1.0f, false) { // from class: androidx.media3.exoplayer.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                if (size() > i10) {
                    return true;
                }
                return false;
            }
        };
    }
}
