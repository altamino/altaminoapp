package io.ktor.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class y {
    @NotNull
    public static final h a(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return new h(str);
    }

    private static final char b(char c7) {
        if ('A' > c7 || c7 >= '[') {
            return (c7 < 0 || c7 >= 128) ? Character.toLowerCase(c7) : c7;
        }
        return (char) (c7 + ' ');
    }

    @NotNull
    public static final String c(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            char cCharAt = str.charAt(i10);
            if (b(cCharAt) != cCharAt) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append((CharSequence) str, 0, i10);
        int iW = kotlin.text.u.W(str);
        if (i10 <= iW) {
            while (true) {
                sb.append(b(str.charAt(i10)));
                if (i10 == iW) {
                    break;
                }
                i10++;
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }
}
