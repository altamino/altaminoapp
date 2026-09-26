package org.apache.commons.compress.compressors.zstandard;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes10.dex */
public class ZstdUtils {
    private static final byte[] ZSTANDARD_FRAME_MAGIC = {40, -75, 47, -3};
    private static final byte[] SKIPPABLE_FRAME_MAGIC = {42, 77, c.CAN};
    private static volatile CachedAvailability cachedZstdAvailability = CachedAvailability.DONT_CACHE;

    enum CachedAvailability {
        DONT_CACHE,
        CACHED_AVAILABLE,
        CACHED_UNAVAILABLE
    }

    static {
        try {
            Class.forName("org.osgi.framework.BundleEvent");
        } catch (Exception unused) {
            setCacheZstdAvailablity(true);
        }
    }

    static CachedAvailability getCachedZstdAvailability() {
        return cachedZstdAvailability;
    }

    private static boolean internalIsZstdCompressionAvailable() {
        try {
            Class.forName("com.github.luben.zstd.ZstdInputStream");
            return true;
        } catch (Exception | NoClassDefFoundError unused) {
            return false;
        }
    }

    public static boolean isZstdCompressionAvailable() {
        CachedAvailability cachedAvailability = cachedZstdAvailability;
        if (cachedAvailability != CachedAvailability.DONT_CACHE) {
            return cachedAvailability == CachedAvailability.CACHED_AVAILABLE;
        }
        return internalIsZstdCompressionAvailable();
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 < ZSTANDARD_FRAME_MAGIC.length) {
            return false;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = ZSTANDARD_FRAME_MAGIC;
            if (i11 >= bArr2.length) {
                return true;
            }
            if (bArr[i11] == bArr2[i11]) {
                i11++;
            } else {
                if (80 != (bArr[0] & 240)) {
                    return false;
                }
                int i12 = 0;
                while (true) {
                    byte[] bArr3 = SKIPPABLE_FRAME_MAGIC;
                    if (i12 >= bArr3.length) {
                        return true;
                    }
                    int i13 = i12 + 1;
                    if (bArr[i13] != bArr3[i12]) {
                        return false;
                    }
                    i12 = i13;
                }
            }
        }
    }

    public static void setCacheZstdAvailablity(boolean z6) {
        if (!z6) {
            cachedZstdAvailability = CachedAvailability.DONT_CACHE;
        } else if (cachedZstdAvailability == CachedAvailability.DONT_CACHE) {
            cachedZstdAvailability = internalIsZstdCompressionAvailable() ? CachedAvailability.CACHED_AVAILABLE : CachedAvailability.CACHED_UNAVAILABLE;
        }
    }

    private ZstdUtils() {
    }
}
