package b5;

import androidx.annotation.Nullable;
import w7.k;

/* JADX INFO: loaded from: classes7.dex */
public final class e {
    @Nullable
    public static String a() {
        try {
            return k.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
