package com.google.android.exoplayer2.offline;

import java.io.Closeable;

/* loaded from: classes.dex */
public interface DownloadCursor extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    Download getDownload();

    int getPosition();

    boolean moveToNext();

    boolean moveToPosition(int i);

    /* renamed from: com.google.android.exoplayer2.offline.DownloadCursor$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
