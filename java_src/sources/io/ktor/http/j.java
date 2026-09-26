package io.ktor.http;

import java.util.Set;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class j {

    @NotNull
    private static final Set<Character> HeaderFieldValueSeparators = y0.i('(', ')', '<', '>', '@', Character.valueOf(kotlinx.serialization.json.internal.b.COMMA), ';', Character.valueOf(kotlinx.serialization.json.internal.b.COLON), Character.valueOf(kotlinx.serialization.json.internal.b.STRING_ESC), Character.valueOf(kotlinx.serialization.json.internal.b.STRING), '/', Character.valueOf(kotlinx.serialization.json.internal.b.BEGIN_LIST), Character.valueOf(kotlinx.serialization.json.internal.b.END_LIST), '?', '=', Character.valueOf(kotlinx.serialization.json.internal.b.BEGIN_OBJ), Character.valueOf(kotlinx.serialization.json.internal.b.END_OBJ), ' ', '\t', '\n', '\r');

    @NotNull
    public static final String d(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        StringBuilder sb = new StringBuilder();
        e(str, sb);
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    private static final void e(String str, StringBuilder sb) {
        sb.append("\"");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\\') {
                sb.append("\\\\");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else {
                sb.append(cCharAt);
            }
        }
        sb.append("\"");
    }

    private static final boolean b(String str) {
        if (str.length() < 2 || kotlin.text.w.g1(str) != '\"' || kotlin.text.w.h1(str) != '\"') {
            return false;
        }
        int i10 = 1;
        do {
            int iB0 = kotlin.text.u.b0(str, kotlinx.serialization.json.internal.b.STRING, i10, false, 4, null);
            if (iB0 == kotlin.text.u.W(str)) {
                break;
            }
            int i11 = 0;
            for (int i12 = iB0 - 1; str.charAt(i12) == '\\'; i12--) {
                i11++;
            }
            if (i11 % 2 == 0) {
                return false;
            }
            i10 = iB0 + 1;
        } while (i10 < str.length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(String str) {
        if (str.length() == 0) {
            return true;
        }
        if (b(str)) {
            return false;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (HeaderFieldValueSeparators.contains(Character.valueOf(str.charAt(i10)))) {
                return true;
            }
        }
        return false;
    }
}
