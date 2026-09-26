package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class MediaLibraryInfo {
    public static final boolean ASSERTIONS_ENABLED = true;
    public static final String TAG = "AndroidXMedia3";
    public static final boolean TRACE_ENABLED = true;
    public static final String VERSION = "1.1.1";
    public static final int VERSION_INT = 1001001300;
    public static final String VERSION_SLASHY = "AndroidXMedia3/1.1.1";
    private static final HashSet<String> registeredModules = new HashSet<>();
    private static String registeredModulesString = "media3.common";

    public static synchronized void a(String str) {
        if (registeredModules.add(str)) {
            registeredModulesString += ", " + str;
        }
    }

    public static synchronized String b() {
        return registeredModulesString;
    }

    private MediaLibraryInfo() {
    }
}
