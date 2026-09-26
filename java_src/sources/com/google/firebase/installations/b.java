package com.google.firebase.installations;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

/* JADX INFO: loaded from: classes11.dex */
class b {
    private static final String TAG = "CrossProcessLock";
    private final FileChannel channel;
    private final FileLock lock;

    /* JADX WARN: Code duplicated, block: B:33:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static b a(Context context, String str) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new b(channel, fileLockLock);
                } catch (IOException e) {
                    e = e;
                    Log.e(TAG, "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Error e2) {
                    e = e2;
                    Log.e(TAG, "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                } catch (OverlappingFileLockException e6) {
                    e = e6;
                    Log.e(TAG, "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException e7) {
                e = e7;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e10) {
            e = e10;
            channel = null;
            fileLockLock = null;
        }
    }

    void b() {
        try {
            this.lock.release();
            this.channel.close();
        } catch (IOException e) {
            Log.e(TAG, "encountered error while releasing, ignoring", e);
        }
    }

    private b(FileChannel fileChannel, FileLock fileLock) {
        this.channel = fileChannel;
        this.lock = fileLock;
    }
}
