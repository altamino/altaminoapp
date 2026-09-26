package coil.util;

import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import java.io.File;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class l {
    private static final int FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES = 30;
    private static final int FILE_DESCRIPTOR_CHECK_INTERVAL_MILLIS = 30000;
    private static final int FILE_DESCRIPTOR_LIMIT = 800;

    @NotNull
    private static final String TAG = "FileDescriptorCounter";

    @NotNull
    public static final l INSTANCE = new l();

    @NotNull
    private static final File fileDescriptorList = new File("/proc/self/fd");
    private static int decodesSinceLastFileDescriptorCheck = 30;
    private static long lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
    private static boolean hasAvailableFileDescriptors = true;

    @WorkerThread
    public final synchronized boolean b(@Nullable q qVar) {
        try {
            if (a()) {
                decodesSinceLastFileDescriptorCheck = 0;
                lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
                String[] list = fileDescriptorList.list();
                if (list == null) {
                    list = new String[0];
                }
                int length = list.length;
                boolean z6 = length < 800;
                hasAvailableFileDescriptors = z6;
                if (!z6 && qVar != null && qVar.b() <= 5) {
                    qVar.a(TAG, 5, "Unable to allocate more hardware bitmaps. Number of used file descriptors: " + length, null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hasAvailableFileDescriptors;
    }

    private final boolean a() {
        int i10 = decodesSinceLastFileDescriptorCheck;
        decodesSinceLastFileDescriptorCheck = i10 + 1;
        return i10 >= 30 || SystemClock.uptimeMillis() > lastFileDescriptorCheckTimestamp + ((long) FILE_DESCRIPTOR_CHECK_INTERVAL_MILLIS);
    }

    private l() {
    }
}
