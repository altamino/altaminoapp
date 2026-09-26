package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.t;

/* JADX INFO: loaded from: classes10.dex */
public final class d {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }
}
