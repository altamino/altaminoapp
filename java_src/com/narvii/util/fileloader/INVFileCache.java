package com.narvii.util.fileloader;

import java.io.File;

/* compiled from: INVFileCache.kt */
/* loaded from: classes3.dex */
public interface INVFileCache {
    void clear();

    File get(String str);

    void put(String str, File file);

    boolean remove(String str);

    void touch(File file);

    void trimAndFlush(int i, long j);
}
