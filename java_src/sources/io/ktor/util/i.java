package io.ktor.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class i {
    @NotNull
    public static final char[] b(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        int length = str.length();
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = str.charAt(i10);
        }
        return cArr;
    }

    public static final boolean a(char c7) {
        if (Character.toLowerCase(c7) == c7) {
            return true;
        }
        return false;
    }
}
