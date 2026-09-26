package androidx.webkit;

import androidx.annotation.GuardedBy;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes10.dex */
public class ProcessGlobalConfig {
    String mCacheDirectoryBasePath;
    String mDataDirectoryBasePath;
    String mDataDirectorySuffix;
    private static final AtomicReference<HashMap<String, Object>> sProcessGlobalConfig = new AtomicReference<>();
    private static final Object sLock = new Object();

    @GuardedBy
    private static boolean sApplyCalled = false;
}
