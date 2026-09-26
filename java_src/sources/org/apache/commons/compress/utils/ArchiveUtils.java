package org.apache.commons.compress.utils;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes8.dex */
public class ArchiveUtils {
    private static final int MAX_SANITIZED_NAME_LENGTH = 255;

    public static boolean isArrayZero(byte[] bArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEqual(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13, boolean z6) {
        int i14 = i11 < i13 ? i11 : i13;
        for (int i15 = 0; i15 < i14; i15++) {
            if (bArr[i10 + i15] != bArr2[i12 + i15]) {
                return false;
            }
        }
        if (i11 == i13) {
            return true;
        }
        if (!z6) {
            return false;
        }
        if (i11 > i13) {
            while (i13 < i11) {
                if (bArr[i10 + i13] != 0) {
                    return false;
                }
                i13++;
            }
        } else {
            while (i11 < i13) {
                if (bArr2[i12 + i11] != 0) {
                    return false;
                }
                i11++;
            }
        }
        return true;
    }

    public static boolean isEqualWithNull(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return isEqual(bArr, i10, i11, bArr2, i12, i13, true);
    }

    public static boolean matchAsciiBuffer(String str, byte[] bArr, int i10, int i11) {
        try {
            byte[] bytes = str.getBytes("US-ASCII");
            return isEqual(bytes, 0, bytes.length, bArr, i10, i11, false);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String toAsciiString(byte[] bArr) {
        try {
            return new String(bArr, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static byte[] toAsciiBytes(String str) {
        try {
            return str.getBytes("US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String toString(ArchiveEntry archiveEntry) {
        StringBuilder sb = new StringBuilder();
        sb.append(archiveEntry.isDirectory() ? 'd' : '-');
        String string = Long.toString(archiveEntry.getSize());
        sb.append(' ');
        for (int i10 = 7; i10 > string.length(); i10--) {
            sb.append(' ');
        }
        sb.append(string);
        sb.append(' ');
        sb.append(archiveEntry.getName());
        return sb.toString();
    }

    private ArchiveUtils() {
    }

    public static String sanitize(String str) {
        char[] cArrCopyOf;
        Character.UnicodeBlock unicodeBlockOf;
        char[] charArray = str.toCharArray();
        if (charArray.length <= 255) {
            cArrCopyOf = charArray;
        } else {
            cArrCopyOf = Arrays.copyOf(charArray, 255);
        }
        if (charArray.length > 255) {
            for (int i10 = 252; i10 < 255; i10++) {
                cArrCopyOf[i10] = '.';
            }
        }
        StringBuilder sb = new StringBuilder();
        for (char c7 : cArrCopyOf) {
            if (!Character.isISOControl(c7) && (unicodeBlockOf = Character.UnicodeBlock.of(c7)) != null && unicodeBlockOf != Character.UnicodeBlock.SPECIALS) {
                sb.append(c7);
            } else {
                sb.append('?');
            }
        }
        return sb.toString();
    }

    public static String toAsciiString(byte[] bArr, int i10, int i11) {
        try {
            return new String(bArr, i10, i11, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isEqual(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return isEqual(bArr, i10, i11, bArr2, i12, i13, false);
    }

    public static boolean matchAsciiBuffer(String str, byte[] bArr) {
        return matchAsciiBuffer(str, bArr, 0, bArr.length);
    }

    public static boolean isEqual(byte[] bArr, byte[] bArr2) {
        return isEqual(bArr, 0, bArr.length, bArr2, 0, bArr2.length, false);
    }

    public static boolean isEqual(byte[] bArr, byte[] bArr2, boolean z6) {
        return isEqual(bArr, 0, bArr.length, bArr2, 0, bArr2.length, z6);
    }
}
