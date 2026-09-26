package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
final class SimpleCacheSpan extends CacheSpan {
    private static final Pattern CACHE_FILE_PATTERN_V1 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V2 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V3 = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    static final String COMMON_SUFFIX = ".exo";
    private static final String SUFFIX = ".v3.exo";

    @Nullable
    public static SimpleCacheSpan e(File file, long j6, long j10, CachedContentIndex cachedContentIndex) {
        File file2;
        String strK;
        String name = file.getName();
        if (name.endsWith(SUFFIX)) {
            file2 = file;
        } else {
            File fileK = k(file, cachedContentIndex);
            if (fileK == null) {
                return null;
            }
            file2 = fileK;
            name = fileK.getName();
        }
        Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches() || (strK = cachedContentIndex.k(Integer.parseInt((String) Assertions.e(matcher.group(1))))) == null) {
            return null;
        }
        long length = j6 == -1 ? file2.length() : j6;
        if (length == 0) {
            return null;
        }
        return new SimpleCacheSpan(strK, Long.parseLong((String) Assertions.e(matcher.group(2))), length, j10 == -9223372036854775807L ? Long.parseLong((String) Assertions.e(matcher.group(3))) : j10, file2);
    }

    public static SimpleCacheSpan h(String str, long j6, long j10) {
        return new SimpleCacheSpan(str, j6, j10, -9223372036854775807L, null);
    }

    public static SimpleCacheSpan i(String str, long j6) {
        return new SimpleCacheSpan(str, j6, -1L, -9223372036854775807L, null);
    }

    public static File j(File file, int i10, long j6, long j10) {
        return new File(file, i10 + "." + j6 + "." + j10 + SUFFIX);
    }

    public SimpleCacheSpan d(File file, long j6) {
        Assertions.g(this.isCached);
        return new SimpleCacheSpan(this.key, this.position, this.length, j6, file);
    }

    private SimpleCacheSpan(String str, long j6, long j10, long j11, @Nullable File file) {
        super(str, j6, j10, j11, file);
    }

    @Nullable
    private static File k(File file, CachedContentIndex cachedContentIndex) {
        String strP1;
        String name = file.getName();
        Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            strP1 = Util.p1((String) Assertions.e(matcher.group(1)));
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            if (matcher.matches()) {
                strP1 = (String) Assertions.e(matcher.group(1));
            } else {
                strP1 = null;
            }
        }
        if (strP1 == null) {
            return null;
        }
        File fileJ = j((File) Assertions.i(file.getParentFile()), cachedContentIndex.f(strP1), Long.parseLong((String) Assertions.e(matcher.group(2))), Long.parseLong((String) Assertions.e(matcher.group(3))));
        if (!file.renameTo(fileJ)) {
            return null;
        }
        return fileJ;
    }

    @Nullable
    public static SimpleCacheSpan f(File file, long j6, CachedContentIndex cachedContentIndex) {
        return e(file, j6, -9223372036854775807L, cachedContentIndex);
    }
}
