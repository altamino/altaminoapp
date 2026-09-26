package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
class k {
    private static final int a(String str) {
        int iB0;
        char c7 = File.separatorChar;
        int iB1 = u.b0(str, c7, 0, false, 4, null);
        if (iB1 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c7 || (iB0 = u.b0(str, c7, 2, false, 4, null)) < 0) {
                return 1;
            }
            int iB2 = u.b0(str, c7, iB0 + 1, false, 4, null);
            return iB2 >= 0 ? iB2 + 1 : str.length();
        }
        if (iB1 > 0 && str.charAt(iB1 - 1) == ':') {
            return iB1 + 1;
        }
        if (iB1 == -1 && u.S(str, kotlinx.serialization.json.internal.b.COLON, false, 2, null)) {
            return str.length();
        }
        return 0;
    }

    public static final boolean b(@NotNull File file) {
        t.j(file, "<this>");
        String path = file.getPath();
        t.i(path, "getPath(...)");
        return a(path) > 0;
    }
}
