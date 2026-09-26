package androidx.media3.common.util;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private static int[] a(String str) {
        int iIndexOf;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf2 != -1) {
            length = iIndexOf2;
        }
        int iIndexOf3 = str.indexOf(63);
        if (iIndexOf3 == -1 || iIndexOf3 > length) {
            iIndexOf3 = length;
        }
        int iIndexOf4 = str.indexOf(47);
        if (iIndexOf4 == -1 || iIndexOf4 > iIndexOf3) {
            iIndexOf4 = iIndexOf3;
        }
        int iIndexOf5 = str.indexOf(58);
        if (iIndexOf5 > iIndexOf4) {
            iIndexOf5 = -1;
        }
        int i10 = iIndexOf5 + 2;
        if (i10 < iIndexOf3 && str.charAt(iIndexOf5 + 1) == '/' && str.charAt(i10) == '/') {
            iIndexOf = str.indexOf(47, iIndexOf5 + 3);
            if (iIndexOf == -1 || iIndexOf > iIndexOf3) {
                iIndexOf = iIndexOf3;
            }
        } else {
            iIndexOf = iIndexOf5 + 1;
        }
        iArr[0] = iIndexOf5;
        iArr[1] = iIndexOf;
        iArr[2] = iIndexOf3;
        iArr[3] = length;
        return iArr;
    }

    public static boolean b(@Nullable String str) {
        return (str == null || a(str)[0] == -1) ? false : true;
    }

    private static String c(StringBuilder sb, int i10, int i11) {
        int i12;
        int iLastIndexOf;
        if (i10 >= i11) {
            return sb.toString();
        }
        if (sb.charAt(i10) == '/') {
            i10++;
        }
        int i13 = i10;
        int i14 = i13;
        while (i13 <= i11) {
            if (i13 == i11) {
                i12 = i13;
            } else if (sb.charAt(i13) == '/') {
                i12 = i13 + 1;
            } else {
                i13++;
            }
            int i15 = i14 + 1;
            if (i13 == i15 && sb.charAt(i14) == '.') {
                sb.delete(i14, i12);
                i11 -= i12 - i14;
            } else {
                if (i13 == i14 + 2 && sb.charAt(i14) == '.' && sb.charAt(i15) == '.') {
                    iLastIndexOf = sb.lastIndexOf(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, i14 - 2) + 1;
                    int i16 = iLastIndexOf > i10 ? iLastIndexOf : i10;
                    sb.delete(i16, i12);
                    i11 -= i12 - i16;
                } else {
                    iLastIndexOf = i13 + 1;
                }
                i14 = iLastIndexOf;
            }
            i13 = i14;
        }
        return sb.toString();
    }

    public static String d(@Nullable String str, @Nullable String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] iArrA = a(str2);
        if (iArrA[0] != -1) {
            sb.append(str2);
            c(sb, iArrA[1], iArrA[2]);
            return sb.toString();
        }
        int[] iArrA2 = a(str);
        if (iArrA[3] == 0) {
            sb.append((CharSequence) str, 0, iArrA2[3]);
            sb.append(str2);
            return sb.toString();
        }
        if (iArrA[2] == 0) {
            sb.append((CharSequence) str, 0, iArrA2[2]);
            sb.append(str2);
            return sb.toString();
        }
        int i10 = iArrA[1];
        if (i10 != 0) {
            int i11 = iArrA2[0] + 1;
            sb.append((CharSequence) str, 0, i11);
            sb.append(str2);
            return c(sb, iArrA[1] + i11, i11 + iArrA[2]);
        }
        if (str2.charAt(i10) == '/') {
            sb.append((CharSequence) str, 0, iArrA2[1]);
            sb.append(str2);
            int i12 = iArrA2[1];
            return c(sb, i12, iArrA[2] + i12);
        }
        int i13 = iArrA2[0] + 2;
        int i14 = iArrA2[1];
        if (i13 >= i14 || i14 != iArrA2[2]) {
            int iLastIndexOf = str.lastIndexOf(47, iArrA2[2] - 1);
            int i15 = iLastIndexOf == -1 ? iArrA2[1] : iLastIndexOf + 1;
            sb.append((CharSequence) str, 0, i15);
            sb.append(str2);
            return c(sb, iArrA2[1], i15 + iArrA[2]);
        }
        sb.append((CharSequence) str, 0, i14);
        sb.append('/');
        sb.append(str2);
        int i16 = iArrA2[1];
        return c(sb, i16, iArrA[2] + i16 + 1);
    }

    private UriUtil() {
    }

    public static Uri e(@Nullable String str, @Nullable String str2) {
        return Uri.parse(d(str, str2));
    }
}
