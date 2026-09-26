package androidx.sqlite.util;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.RestrictTo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public final class ProcessLock {

    @NotNull
    private static final String TAG = "SupportSQLiteLock";

    @Nullable
    private FileChannel lockChannel;

    @Nullable
    private final File lockFile;
    private final boolean processLock;

    @SuppressLint({"SyntheticAccessor"})
    @NotNull
    private final Lock threadLock;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Map<String, Lock> threadLocksMap = new HashMap();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Lock b(String str) {
            Lock lock;
            synchronized (ProcessLock.threadLocksMap) {
                try {
                    Map map = ProcessLock.threadLocksMap;
                    Object reentrantLock = map.get(str);
                    if (reentrantLock == null) {
                        reentrantLock = new ReentrantLock();
                        map.put(str, reentrantLock);
                    }
                    lock = (Lock) reentrantLock;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return lock;
        }
    }

    public ProcessLock(@NotNull String name, @Nullable File file, boolean z6) {
        File file2;
        t.j(name, "name");
        this.processLock = z6;
        if (file != null) {
            file2 = new File(file, name + ".lck");
        } else {
            file2 = null;
        }
        this.lockFile = file2;
        this.threadLock = Companion.b(name);
    }

    public static /* synthetic */ void c(ProcessLock processLock, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = processLock.processLock;
        }
        processLock.b(z6);
    }

    public final void b(boolean z6) {
        this.threadLock.lock();
        if (z6) {
            try {
                File file = this.lockFile;
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(this.lockFile).getChannel();
                channel.lock();
                this.lockChannel = channel;
            } catch (IOException e) {
                this.lockChannel = null;
                Log.w(TAG, "Unable to grab file lock.", e);
            }
        }
    }

    public final void d() {
        try {
            FileChannel fileChannel = this.lockChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.threadLock.unlock();
    }
}
