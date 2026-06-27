package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ab implements com.google.android.play.core.splitinstall.e {
    private final Context a;
    private final com.google.android.play.core.splitcompat.b b;
    private final ac c;
    private final Executor d;
    private final com.google.android.play.core.splitinstall.h e;

    public ab(Context context, Executor executor, ac acVar, com.google.android.play.core.splitcompat.b bVar, com.google.android.play.core.splitinstall.h hVar) {
        this.a = context;
        this.b = bVar;
        this.c = acVar;
        this.d = executor;
        this.e = hVar;
    }

    private final Integer a(List<Intent> list) {
        FileLock fileLockTryLock;
        Integer numValueOf;
        try {
            FileChannel channel = new RandomAccessFile(this.b.b(), "rw").getChannel();
            try {
                try {
                    fileLockTryLock = channel.tryLock();
                } catch (OverlappingFileLockException unused) {
                    fileLockTryLock = null;
                }
                if (fileLockTryLock != null) {
                    numValueOf = Integer.valueOf(b(list));
                    fileLockTryLock.release();
                } else {
                    numValueOf = null;
                }
                if (channel != null) {
                    a((Throwable) null, channel);
                }
                return numValueOf;
            } finally {
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Error locking files.", e);
            return -13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(com.google.android.play.core.splitinstall.f fVar) {
        try {
            if (this.e.a(this.a.getApplicationContext())) {
                Log.i("SplitCompat", "Splits installed.");
                fVar.a();
            } else {
                Log.e("SplitCompat", "Emulating splits failed.");
                fVar.a(-12);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Error emulating splits.", e);
            fVar.a(-12);
        }
    }

    private static /* synthetic */ void a(Throwable th, InputStream inputStream) throws IOException {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            bj.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, OutputStream outputStream) throws IOException {
        if (th == null) {
            outputStream.close();
            return;
        }
        try {
            outputStream.close();
        } catch (Throwable th2) {
            bj.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            bj.a(th, th2);
        }
    }

    private final int b(List<Intent> list) {
        try {
            Log.i("SplitCompat", "Copying splits.");
            for (Intent intent : list) {
                String stringExtra = intent.getStringExtra("split_id");
                File fileA = this.b.a(stringExtra);
                if (!fileA.exists() && !this.b.b(stringExtra).exists()) {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.a.getContentResolver().openFileDescriptor(intent.getData(), "r").getFileDescriptor()));
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(fileA);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i = bufferedInputStream.read(bArr);
                                if (i <= 0) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i);
                            }
                            fileOutputStream.close();
                            a((Throwable) null, bufferedInputStream);
                        } finally {
                        }
                    } finally {
                    }
                }
            }
            Log.i("SplitCompat", "Splits copied.");
            try {
                if (this.c.a()) {
                    Log.i("SplitCompat", "Splits verified.");
                    return 0;
                }
                Log.e("SplitCompat", "Split verification failed.");
                return -11;
            } catch (Exception e) {
                Log.e("SplitCompat", "Error verifying splits.", e);
                return -11;
            }
        } catch (Exception e2) {
            Log.e("SplitCompat", "Error copying splits.", e2);
            return -13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(List<Intent> list, com.google.android.play.core.splitinstall.f fVar) {
        Integer numA = a(list);
        if (numA == null) {
            return;
        }
        if (numA.intValue() == 0) {
            fVar.b();
        } else {
            fVar.a(numA.intValue());
        }
    }

    @Override // com.google.android.play.core.splitinstall.e
    public final void a(List<Intent> list, com.google.android.play.core.splitinstall.f fVar) {
        if (!this.e.a()) {
            throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
        }
        this.d.execute(new ad(this, list, fVar));
    }
}
