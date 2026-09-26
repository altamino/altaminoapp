package org.apache.commons.compress.compressors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public class FileNameUtil {
    private final Map<String, String> compressSuffix = new HashMap();
    private final String defaultExtension;
    private final int longestCompressedSuffix;
    private final int longestUncompressedSuffix;
    private final int shortestCompressedSuffix;
    private final int shortestUncompressedSuffix;
    private final Map<String, String> uncompressSuffix;

    public String getCompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i10 = this.shortestUncompressedSuffix; i10 <= this.longestUncompressedSuffix && i10 < length; i10++) {
            int i11 = length - i10;
            String str2 = this.compressSuffix.get(lowerCase.substring(i11));
            if (str2 != null) {
                return str.substring(0, i11) + str2;
            }
        }
        return str + this.defaultExtension;
    }

    public String getUncompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i10 = this.shortestCompressedSuffix; i10 <= this.longestCompressedSuffix && i10 < length; i10++) {
            int i11 = length - i10;
            String str2 = this.uncompressSuffix.get(lowerCase.substring(i11));
            if (str2 != null) {
                return str.substring(0, i11) + str2;
            }
        }
        return str;
    }

    public boolean isCompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i10 = this.shortestCompressedSuffix; i10 <= this.longestCompressedSuffix && i10 < length; i10++) {
            if (this.uncompressSuffix.containsKey(lowerCase.substring(length - i10))) {
                return true;
            }
        }
        return false;
    }

    public FileNameUtil(Map<String, String> map, String str) {
        this.uncompressSuffix = Collections.unmodifiableMap(map);
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MIN_VALUE;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            int length = entry.getKey().length();
            i10 = length > i10 ? length : i10;
            i11 = length < i11 ? length : i11;
            String value = entry.getValue();
            int length2 = value.length();
            if (length2 > 0) {
                if (!this.compressSuffix.containsKey(value)) {
                    this.compressSuffix.put(value, entry.getKey());
                }
                i13 = length2 > i13 ? length2 : i13;
                if (length2 < i12) {
                    i12 = length2;
                }
            }
        }
        this.longestCompressedSuffix = i10;
        this.longestUncompressedSuffix = i13;
        this.shortestCompressedSuffix = i11;
        this.shortestUncompressedSuffix = i12;
        this.defaultExtension = str;
    }
}
