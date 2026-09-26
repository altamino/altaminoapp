package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class k0 {
    private static final int AVAILABLE_PROCESSORS = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return AVAILABLE_PROCESSORS;
    }

    @Nullable
    public static final String b(@NotNull String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
